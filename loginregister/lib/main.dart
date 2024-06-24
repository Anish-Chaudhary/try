import 'package:flutter/material.dart';
import 'package:loginregister/validationofregister.dart';
import 'package:loginregister/validationofregister2.dart';

import 'Register.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
     
      home:RegisterPage2() ,
    );
  }
}