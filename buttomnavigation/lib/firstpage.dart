// import 'package:flutter/material.dart';

// import 'firstpage.dart';


// class firstpage extends StatelessWidget {
//   const firstpage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
// appBar: AppBar(title: Text('Mainpage'),backgroundColor: Colors.deepPurple,

// ),
// body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
// Text('firstpage',style: TextStyle(fontSize: 36),
// ),
// ElevatedButton(onPressed: () {
//   Navigator.push(context, MaterialPageRoute(builder: (context) => firstpage(),
//   ),
//   );
// }, child: Text('hi',style: TextStyle(fontSize: 35),
// ),

// style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
// )



// ],)
// ,),
//     );
//   }
//   }

import 'package:flutter/material.dart';

class firstpage extends StatelessWidget {
  final String Selecteditem;
  firstpage(this.Selecteditem);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

appBar: AppBar(title: Text(' first page'),
),


body: Center(child: Text('move to first page:$Selecteditem'),
),







    );
  }
}

