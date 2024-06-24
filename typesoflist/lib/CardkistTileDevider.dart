// import 'package:flutter/material.dart';
// class ListElement extends StatelessWidget{
//   const ListElement({super.key});

//   @override
//   Widget build(BuildContext context) {


  
//     return Scaffold(
//      appBar: AppBar(title: Text("UsingListView"),
     
//       ),
//       body: Center(child: ListView(children: [Column(children: [
//         ListElement(),
//         ListElement(),
//         ListElement(),
//         ListElement(),
//         ListElement(),
//         ListElement(),

//       ],
//       ),
//   ElevatedButton(onPressed: (){},
  
//   style: ElevatedButton.styleFrom(
// foregroundColor: Colors.white,backgroundColor: Colors.red,padding: EdgeInsets.all(15),side: BorderSide(width: 5,color: Colors.pink),







//   ),
//   child: Text("Cutom"),
  
//   ), 



//       ],

//       )
//       ,),
//       );
//       }

// SingleChildScrollView usingscrollview(){
// return SingleChildScrollView(
// child: Column(children: [


//   ListElement(),
//         ListElement(),
//         ListElement(),
//         ListElement(),
//         ListElement(),
//         ListElement(),







// ],),




// );

// Column ListElement(){
//   return Column(children: [

// Card(
//   child: ListTile(
// trailing: Icon(Icons.arrow_forward,),
// leading: Icon(Icons.arrow_back),
// title: Text("Title"),
// subtitle: Text("Subtitle"),


//   ),

// color: Colors.yellow,
//   elevation: 20,
//   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0),),


  
// ),

// Divider(color: Colors.blue,
// thickness: 4,
// indent: 20,
// endIndent: 50,
// height: 25,
// ),





//   ],);
// }




// }







//       }

import 'package:flutter/material.dart';

class UsingCardLisTile extends StatelessWidget {
  const UsingCardLisTile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Using Card ListTile divider'),
      ),
      body:Center(
        child:ListView(
          children:[ Column(
            children: [
             listElement(),
              listElement(),
              listElement(),
              listElement(),
               listElement(),
              listElement(),
              listElement(),
              listElement(),
              listElement(),
              
            ],
          ),
ElevatedButton(
  onPressed: () {},
  style: ElevatedButton.styleFrom(
    foregroundColor: Colors.white, backgroundColor: Colors.blue, // Change the text color
    padding: EdgeInsets.all(16.0), // Set padding
    side: BorderSide(width: 2, color: Colors.red), // Set border width and color
  ),
  child: Text('Custom Elevated Button'),
),
],
          
        ), 
        )
      
    );
  }

  SingleChildScrollView usingScrollView() {
    return SingleChildScrollView(
        child: Column(
          children: [
           listElement(),
            listElement(),
            listElement(),
            listElement(),
             listElement(),
            listElement(),
            listElement(),
            listElement(),
            listElement(),
      
            
          ],
        ),
      );
  }

  Column listElement() {
    return Column(
        children: [
          Card(
            child:ListTile(
              leading: Icon(Icons.arrow_forward),
              title: Text('Title'),
              subtitle: Text('Subtitle'),
              trailing: Icon(Icons.arrow_back),
            ),
            color: Colors.purple.shade300,
            shadowColor: Colors.pink,
            elevation: 20,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)),
            //child: Text('Using Card',style: TextStyle(fontSize: 36),),
          ),
          Divider(color:Colors.pink,  //it is used to divide 2 card by green line
          thickness: 3,   //left right handle
          indent: 20,
          endIndent:50 , // line half banauni ki full
          height: 20,)
        ],
      );
  }
}
