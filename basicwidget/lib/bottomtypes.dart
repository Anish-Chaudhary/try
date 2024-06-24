import 'Package:flutter/material.dart';


class ButtonType extends   StatelessWidget {
  const ButtonType({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
//1. text button
TextButton(onPressed: () {
  
},
child: Text('Textbutton', style: TextStyle(backgroundColor: Colors.black26),),
style: TextButton.styleFrom(backgroundColor: Colors.green),


),
TextButton.icon(onPressed: (() {
  //icon rakhyo vane label use garnu parxa ..icon narakhey text use garnu parxa
}), icon: Icon(Icons.grade), label: Text('This is my text button'),),
ElevatedButton(onPressed: (() {// Elevatedbutton ma child use hunxa
  
}),child: Text('This is Elevatedbutton'), ),

ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.abc_rounded), 
label: Text("This is my Elevated button"),),




OutlinedButton(onPressed: (() {
  
}), child: Text('This is outlline button'),),



OutlinedButton.icon(onPressed: (() {
  
}), icon: Icon(Icons.place_sharp),
 label: Text('This is outline button'))




    ],);
  }
}