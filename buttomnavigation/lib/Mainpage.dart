// import 'package:flutter/material.dart';

// import 'firstpage.dart';


// class Mainpage extends StatelessWidget {
//   const Mainpage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
// appBar: AppBar(title: Text('Mainpage'),backgroundColor: Colors.deepPurple,

// ),
// body: Center(child: Column(children: [
// ElevatedButton(onPressed: () {
//   Navigator.push(context, MaterialPageRoute(builder: (context) => firstpage(),
//   ),
//   );
// }, child: Text('firstpage',style: TextStyle(fontSize: 35),),
// style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
//  )




// ],),
// ),












//     );
//   }
// }








import 'dart:html';

import 'package:buttomnavigation/firstpage.dart';
import 'package:buttomnavigation/secondpage.dart';
import 'package:flutter/material.dart';

class mainpage extends StatelessWidget {
  final List<String> itemlist=['item1','item2','item3','item4','item5'];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (
        AppBar(title: Text("mainpage"),)
      ),
      body: Column(children: [Expanded(child: ListView.builder(itemCount: itemlist.length,
       itemBuilder: (context, index) {
        return Card(color: Colors.orangeAccent,
        elevation: 2,
         margin: EdgeInsets.symmetric(horizontal: 16,vertical: 16), 
        child: ListTile(title: Text(itemlist[index]),
        onTap: () {
          Navigator.push(context,MaterialPageRoute(builder: (context) => firstpage(itemlist[index])),
          );}
          ),
           );
        },




        ),
        ),
        Padding(padding: EdgeInsets.symmetric(horizontal: 15,vertical: 16),
        
        child: ElevatedButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder:(context) => Secondpage(),
          ),
          );
        },


        child: Text('moovesecondpage'),
        ),
        
        
        
        ),
      ],
      ),);
  }}
     




