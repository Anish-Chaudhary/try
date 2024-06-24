import 'package:flutter/material.dart';

class dropdown extends StatefulWidget
{
  const dropdown({super.key});
  @override
  _dropdownstate createState()=>_dropdownstate();

}

class _dropdownstate extends State<dropdown>//stateful bnauda yo grnai prchha yeslai mutable class vnchha
{
String chosenvalue="2";//2 starting ma dekhauchha

  @override
  Widget build(BuildContext context) {//override garepachhi matra extend grna manchha
    return Center(//center  ma rakhchha button lai
child:DropdownButton<String>(items: [

DropdownMenuItem(child: Text("one"),
value: "1",

),


DropdownMenuItem(child: Text("two"),
value: "2",

),

DropdownMenuItem(child: Text("three"),
value: "3",

),
DropdownMenuItem(child: Text("four"),
value: "4",

),


],

value: chosenvalue,


 onChanged: (String? newvalue) { 






  if(newvalue !=null)
  {
    setState(() {
      chosenvalue=newvalue;
    });
  }
  },



)


    );


  
  }
} 
