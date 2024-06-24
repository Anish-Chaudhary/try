// meaning of silvers
//silverAppBar: A type of app Bar that integrates with customScrollview and can expand,collapse, or staye pinned
//silvelist: Represents a scrollable list of wigdets. it is optimized for large list of item
// silvergrid : Represents a scrollble grid of widgets. it is optimized for large grid of item
//silvertopboxofAdapter: Converts a non Scrollable widgets into a silver so that it can be used within a customscroll
// silverpadding: adds padding around another silver





// do this first (using containers)

// import 'package:flutter/material.dart';

// class UsingScrollView extends StatelessWidget {
//   const UsingScrollView({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return CustomScrollView(
//       slivers: [
//         SliverAppBar(
//           title: Text('This is appBar'),expandedHeight: 100,backgroundColor: Colors.purple,
//         ),

// SliverList(delegate: SliverChildListDelegate([

// Container(height: 200,color: Colors.orange,),
// Container(height: 200,color: Colors.orange.shade200,),
// Container(height: 200,color: Colors.orange.shade300,),
// Container(height: 200,color: Colors.orange.shade200,),
// Container(height: 200,color: Colors.orange.shade100,),
// Container(height: 200,color: Colors.orange.shade50,),








// ]))



//       ],









//     );
//   }
// }





import 'package:flutter/material.dart';

class UsingScrollView extends StatelessWidget {
  const UsingScrollView({ Key? key }) : super(key: key);

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
              title: Text('Hello World'),background: Image.asset('assets/jet.jpg',fit: BoxFit.cover,),
            ),



        ),
        SliverGrid(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,crossAxisSpacing: 8,mainAxisSpacing: 8),
        delegate: SliverChildBuilderDelegate((BuildContext, int index) {
         return Container(color: Color.fromARGB(255, 15, 186, 9),child: Center(child: Text("Grid item$index"),
         ),
         );
        },
        childCount: 25,),
        ),
        
        
        
        
      
      ],
      ),
      );
        }
        }


