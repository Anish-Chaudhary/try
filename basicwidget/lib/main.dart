import 'package:basicwidget/dropdownwidget.dart';
import 'package:flutter/cupertino.dart';
import 'bottomtypes.dart';
import 'package:flutter/material.dart';
import 'popupmenubutton.dart';
import 'dropdownwidget.dart';

 void main() {
  runApp(MyApp());
}
//stsl main structure open garnalai

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
home: Scaffold(appBar: AppBar(backgroundColor: Colors.purple,
title: Text('Hello'),

),
body: Center(child: MyPopupMenuButton () // suruma run garyo vane buttontype dekhauxa
),
),







    );
  }
}