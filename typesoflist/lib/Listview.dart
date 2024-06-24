import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
// class UsingListView extends StatelessWidget{
//   const UsingListView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("UsingListView"),
//       ),
//       body: Center(child: Card(
//         color: Colors.orange,
//         shadowColor: Colors.blueGrey,
//         elevation: 20,// elevation vanya size
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),

//         ),
//         child: ListTile(leading: Icon(Icons.arrow_back),
//         trailing: Icon(Icons.arrow_forward),
        
//         ),// card vitra ko content yaha hunxa


//       ),),
//     );
// }
// }

class UsingListView extends StatelessWidget {
  UsingListView({Key? key}) : super(key: key);

  List<Book> allBooks =
      List.generate(2000, (index) => Book(index + 1, 'Anish ${index + 1}', 'chaudary ${index + 1}'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Using ListView'),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          var currentBook = allBooks[index];
          return Card(
            color: Colors.pink.shade100,
            child: ListTile(
              onTap: () {
                // Commented out the line that changes background color
                 EasyLoading.instance.backgroundColor = Colors.blue;
                EasyLoading.showToast(
                  'Welcome here',
                  duration: Duration(seconds: 5),
                  dismissOnTap: true,
                  toastPosition: EasyLoadingToastPosition.center,
                );
              },
              onLongPress: () {
                usingAlertDialog(context, "please don't click more");
              },
              title: Text(currentBook.name),
              subtitle: Text(currentBook.writer),
              leading: CircleAvatar(
                child: Text(currentBook.id.toString()),
              ),
            ),
          );
        },
        itemCount: allBooks.length,
        separatorBuilder: (context, index) {
          var newIndex = index + 1;
          if (newIndex % 5 == 0) {
            return Divider(
              color: Colors.purple,
              thickness: 3,
            );
          }
          return Container();
        },
      ),
    );
  }

  void usingAlertDialog(BuildContext myContext, String message) {
    showDialog(
      barrierDismissible: false,
      context: myContext,
      builder: (context) {
        return AlertDialog(
          title: Text('Alert Dialog'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text(message),
              ],
            ),
          ),
          actions: [
            ButtonBar(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Close'),
                ),
              ],
            )
          ],
        );
      },
    );
  }
}

class Book {
  int id = 0;
  String name = '';
  String writer = '';

  Book(this.id, this.name, this.writer);
}

