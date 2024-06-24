// import 'package:flutter/material.dart';
// class MyListView extends StatelessWidget{
//   const MyListView({super.key});

//   @override
//   Widget build(BuildContext context) {


//     List<String> items=List.generate(50, ((index) => 'item $index'));
//     return Scaffold(
//       appBar: AppBar(title: Text("UsingListView"),
//       ),
//       body: ListView.builder(itemCount: items.length, itemBuilder: (context, index) {
        
//         return ListTile(
//           title: Text(items[index]),
//           onTap: () {
//             showsnackBar(context,'tapped on ${items[index]}');
//           },
//         );





//       },),
//       );
//       }
//       }

// void showsnackBar(BuildContext context, String message)
// {
// ScaffoldMessenger.of(context).showSnackBar
// (SnackBar(content: Text(message),
// duration: Duration(seconds: 4),
// ),
// );
// }
    

    import 'package:flutter/material.dart';
class MyListView extends StatelessWidget{
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {


    List<String> items=List.generate(50, ((index) => 'item $index'));
    return Scaffold(
     appBar: AppBar(title: Text("UsingListView"),
      ),
      body: Container(padding: EdgeInsets.all(16),color: Colors.purple,
      child: ListView.builder(itemCount: items.length, itemBuilder: (context, index) {
        return Card(elevation: 5,color: Colors.green,margin: EdgeInsets.symmetric(vertical: 10),
        child: ListTile(title: Text(items[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
        ),
        subtitle: Text("subtitle for${items[index]}"),
        onTap: () {
          showsnackBar(context,'tap on${items[index]}');
        },
        trailing: Icon(Icons.arrow_back),
        leading: Icon(Icons.arrow_forward),
        ),
        );
      },),
      
      
      
      
      ),
    );
    }
    }
    
 void showsnackBar(BuildContext context, String message)
{
ScaffoldMessenger.of(context).showSnackBar
(SnackBar(content: Text(message),
duration: Duration(seconds: 4),
),
);
}