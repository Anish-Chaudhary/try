import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:typesoflist/Differentimageincard.dart';
import 'FixedAppBar.dart';
import 'Listview.dart';
import 'MultipleListView.dart';
import 'CardkistTileDevider.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'Cardinsidecard.dart';
import 'Gridvie.dart';
import 'ScrollView.dart';
import 'horizontalscrollview.dart';

 void main() {
  runApp( MyApp());
  
}
 class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    EasyLoading.init();
    return MaterialApp(
      title: 'flutter',
      theme: ThemeData(primarySwatch: Colors.blue,

      ),
      home: Usinghorizontalscrollview1(),
    );
  }
}