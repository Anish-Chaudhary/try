// import 'package:flutter/material.dart';

// class UsingGriedView extends StatelessWidget {
//   const UsingGriedView({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Using GriedView'),
//       ),


//       body: GridView.builder(
//         itemCount: 50,
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),itemBuilder: (BuildContext context,int  index) {
//           return GestureDetector(
//             child: Container(margin: EdgeInsets.all(11),alignment: Alignment.bottomCenter,
//             decoration: BoxDecoration(border: Border.all(color: Colors.purple,width: 5,style: BorderStyle.solid
//             ),

//             borderRadius: BorderRadius.all( new Radius.circular(15.0),
//        ),
//             boxShadow: [new BoxShadow(color: Colors.blue,offset: new Offset(5, 10),
//             )],
//             image: DecorationImage(image:AssetImage('assets/jet.jpg') ,fit: BoxFit.contain,alignment: Alignment.topCenter),
//             ),
//             ),

// onTap: () {
//   debugPrint('click $index');
// },

// onDoubleTap: () {
//   debugPrint('doubleclick $index');
// },

// onLongPress: () {
//   debugPrint('Longpress $index');
// },

//           );
          
//         }
//         ),

//       );
    
//   }
//   }





import 'package:flutter/material.dart';

class UsingGriedView extends StatelessWidget {
  const UsingGriedView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Using GriedView'),
      ),


    //CrossAxisSpacing le 2 wota coloumn ko bich ma space lyauxa mainAxixspacing le row ko bich ma space lyauna
      body: Center(child: GridView.builder
      (gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,crossAxisSpacing: 8,mainAxisSpacing: 8),
      itemCount: 15, 
      itemBuilder: (BuildContext context,  int index) {
        return Card(
color: Colors.red,
shadowColor: Colors.black,
elevation: 10,
shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0),
),
child: Center(child: ListTile(leading:Icon(Icons.star),
trailing: Icon(Icons.favorite),
title: Text('item  $index'),
subtitle: Text('subtitle'),
),
),


        );
        
      }
      ),
      ),
      );
     
  }
  }