import 'package:flutter/material.dart';

class Usinghorizontalscrollview1 extends StatelessWidget {
  const Usinghorizontalscrollview1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize( preferredSize: Size.fromHeight(300),
      child: AppBar(title: Text("Hello"),//height and width yaa bata badhauna sakxu
     flexibleSpace: Container(height: 280,decoration:
      BoxDecoration(image:DecorationImage(image:  AssetImage('assets/anish.jpg'),fit: BoxFit.cover),
     )
     ),
      ),
      ),
      body: CustomScrollView(slivers: [SliverList(delegate: SliverChildBuilderDelegate(( BuildContext  context,int index) 
      {
        return ListTile(title: Text('item$index'),
        );
      },
      childCount: 30,
      
      
      ),)],),
      
    );
  }
  }