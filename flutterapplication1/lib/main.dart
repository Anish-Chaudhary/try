// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
     

//       home:Scaffold(
//         backgroundColor: Colors.blue,
//         appBar: AppBar
      
//       (title: Text("Hello",style: TextStyle
//       (color: Color.fromARGB(255, 154, 9, 96)),)
//       ,backgroundColor: Colors.white),
//      body: Container(child: Row(
      
//       children: overflowproblem,)),
     
     
     
//      //for flutter logo
//       // body: Container(
//       //   height: 700,
        
//       //   color: Colors.black45,
        
        
// //         child: Row
// //       (
// //        mainAxisSize: MainAxisSize.max, 
// //        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //         crossAxisAlignment: CrossAxisAlignment.center,
        
// //         children: [Container(child: Text("Container1"),
// //       height: 200,
// //       width: 200,
// //       color: Colors.green,
// //       ),





// // Container(child: Text("Container2"),
// //       height: 200,
// //       width: 200,
// //       color: Colors.lightBlue,),
// // Container(child: Text("Container3"),
// //       height: 200,
// //       width: 200,
// //       color: Colors.lightGreen,),
// //       Container(child: Text("Container4"),
// //       height: 200,
// //       width: 200,
// //       color: Colors.orange,),










// //       ]),
// // )


//           // body: Center(child: Container(padding: EdgeInsets.all(25),height:200,width: 200,color:Colors.yellow,
//           // child:Container(margin:EdgeInsets.all(20),height:100,width:100,color:Colors.red, 
//           // child: Text("Hello World", style: TextStyle(backgroundColor: Colors.pink),),)),)
//                 // child: Text(
//                 //   'Hello, Flutter!',
//                 //   style: TextStyle(color: Colors.white),
//                 // ),
//               )
//             );
      
//             //  symmetric(vertical: 50,horizontal:60)
// //      body: Center(child: Text("Hello world"),),
// //      floatingActionButton: FloatingActionButton(onPressed: (){
// //       debugPrint("buttonclick");


// //      },

// // child: Icon(Icons.account_balance_wallet_outlined),
// // backgroundColor: Color.fromARGB(255, 98, 54, 244),

// //      ),
      
      
    


//   }

//   List<Widget> get overflowproblem {
//     return [
//      Expanded(
//        child: 
//           Container(width: 300,
//        height: 300,
//       color: Colors.red,
//        ),),
//       Expanded(child: 
//        Container(width: 300,
//        height: 300,
//       color: Colors.black,
//        ),),
//       Expanded(child: 
//        Container(width: 300,
//        height: 300,
//       color: Colors.green,
//        ),),
//   Expanded(child: 
//     Container(width: 600,
//        height: 300,
//       color: Colors.purple,
//        ),),
//     Expanded(child:
//        Container(width: 300,
//        height: 300,
//       color: Colors.lightBlue,
//        ),),
    
      
       
       
//        ];
     
       
//   }

// //   Center ContainerLesson() {
// //     return Center(
// //       child: Container(
// //         padding: EdgeInsets.all(25),
// //         height: 400,
// //         width: 400,
// //         // child: FlutterLogo(size: 90,),
// //         decoration: BoxDecoration(color: Colors.green,
// //         // borderRadius: BorderRadius.circular(15.0)
// //         shape: BoxShape.rectangle,
// //         border: Border.all(width: 33,color: Colors.purple),
// //         borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),
// //         bottomRight: Radius.circular(25),
// //         topLeft: Radius.circular(30),
// //         topRight: Radius.circular(30)),
// //         image: DecorationImage(image: NetworkImage('https://scontent.fktm7-1.fna.fbcdn.net/v/t39.30808-6/344548668_709509737592291_1476530424772094675_n.jpg?stp=cp6_dst-jpg&_nc_cat=109&ccb=1-7&_nc_sid=efb6e6&_nc_ohc=jrakPNBi9TcAX_RLvX-&_nc_ht=scontent.fktm7-1.fna&oh=00_AfDpCnrJCjynWuNeWP5X23FVsOSKl4kBkf23tXihk38OuQ&oe=65C4D040'),fit: BoxFit.cover),
// //         ),
        
// //       ),
// //     );
// //   }
// // }
// }


import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

 
class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // 6 for changing the icons sign
    final ThemeData theme=ThemeData(
      primarySwatch: Colors.deepPurple,
      appBarTheme: AppBarTheme( color:Colors.deepPurple,
      ),
    );
   
   return MaterialApp(
// 5 for changing theme 
  theme: theme.copyWith(
    colorScheme: theme.colorScheme.copyWith(
      secondary: Colors.red),
    ),



    home: Scaffold(
      backgroundColor: Colors.indigo, //add in container
      appBar: AppBar(
        title: Text('first project',
        style: TextStyle(
          color: Colors.white,
        ),),


        //8 for changing the color of text

  // backgroundColor: Color.fromRGBO(17, 141, 141, 0.984),
      ),

body: Container(
  child: Row(children: OwerFlovProblem),
),




        // 4 for floating of button
        floatingActionButton: FloatingActionButton(onPressed: () {
          debugPrint("Button clicked");
        },
        //7 for adding of the icon with plus sign
        child: Icon(Icons.add_circle_outline), // which is used for make icon circle shape
         backgroundColor: Colors.red,
        ), 
         ),
   );
  }

  List<Widget> get OwerFlovProblem {
    return [
      // Expanded garda overflow problem dekhaudaina
Expanded(
  child: Container(width: 100,
  height: 100,
  color: Colors.purple,),
),

//second container
Expanded(
  child: Container(width: 700,
  height: 100,
  color: Colors.red,),
),


//3 4 5 th container
Expanded(
  child: Container(width: 500,
  height: 100,
  color: Colors.black,),
),

Expanded(
  child: Container(width: 500,
  height: 100,
  color: Colors.blue,),
),

Expanded(
  child: Container(width: 500,
  height: 100,
  color: Colors.green,),
)





];
  }

//   DecorationImage ContainerLessons() {
//     return DecorationImage(image: NetworkImage('https:picsum.photos/250?image=9'),
// fit: BoxFit.cover

// );
  }
  
// }

