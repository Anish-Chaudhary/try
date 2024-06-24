import 'package:flutter/material.dart';
class MyHomePage2 extends StatelessWidget{
  //List of image assets
  final List<String>image = [
    'assets/neon.png',
    'assets/jet.jpg',
    'assets/hy.png',
     'assets/anish.jpg',
  //   'assets/anish.jpg',
  //   'assets/anish.jpg',
   ];
   @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: CustomScrollView(
      slivers: [
        SliverAppBar(
            expandedHeight: 700,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Hello World'),background: Image.asset('assets/jet.jpg',fit: BoxFit.cover,
              ),
            ),
        ),

         SliverGrid(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 8,mainAxisSpacing: 8),
          delegate: SliverChildBuilderDelegate((BuildContext, int index) {
          return Container(
         child: Center(child:Image.asset(image[index],fit: BoxFit.cover,
         ),
         
         
         ),
         );},
         childCount:image.length,
         ),
         ),
           ],
         )
  
      
    );
  }



}