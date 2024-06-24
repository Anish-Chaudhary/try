
import 'package:flutter/material.dart';

class Usinghorizontalscrollview extends StatelessWidget {
  const Usinghorizontalscrollview({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(scrollDirection: Axis.horizontal,gridDelegate: 
    SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 8,mainAxisSpacing: 8),
      itemCount: 15, 
      itemBuilder: (BuildContext context,  int index) {
        return Card(margin: EdgeInsets.all(8),
        child: Center(child: Text('item$index'),
        ),
        );
    
  },
    );
  
  }
  }