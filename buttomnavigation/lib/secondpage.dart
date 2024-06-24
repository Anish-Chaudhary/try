// import 'package:flutter/material.dart';

// class Secondpage extends StatelessWidget {
//   const Secondpage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
// appBar: AppBar(title: Text('Mainpage'),backgroundColor: Colors.deepPurple,

// ),
// body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
// Text('firstpage',style: TextStyle(fontSize: 36),
// ),
// ElevatedButton(onPressed: () {
//   Navigator.of(context).pop();
// }, child: Text('secondpage',style: TextStyle(fontSize: 35),
// ),

// style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
// )



// ],)
// ,),

//     );
//   }
// }



import 'package:flutter/material.dart';
class Secondpage extends StatelessWidget {
  const Secondpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(





      appBar: AppBar(title: Text('Secondpage')
      
      ),

      body: Center(child: ElevatedButton(onPressed: () {
        Navigator.pop(context);
      }, child: Text('Move to main page'),
      ),
      ),





    );
  }
}





