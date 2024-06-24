import 'package:flutter/material.dart';

class MyPopupMenuButton extends StatefulWidget {
  const MyPopupMenuButton({Key? key}) : super(key: key);

  @override
  _MyPopupMenuButtonState createState() => _MyPopupMenuButtonState();
}

class _MyPopupMenuButtonState extends State<MyPopupMenuButton> {//stateful bnauda yo grnai prchha yeslai mutable class vnchha
  String chosenValue = '';

  @override
  Widget build(BuildContext context) {
    return Center(//yhasamma eutai hunxa stateful ko lagi
      child: PopupMenuButton(// mathi ko vnda different hunuprxa nam
        onSelected: (value) {
          setState(() {
            chosenValue = value as String;
          });
        },
        itemBuilder: (BuildContext context) {
          return [
            PopupMenuItem(child: Text("Option 1"), value: "Option 1"),
            PopupMenuItem(child: Text("Option 2"), value: "Option 2"),
            PopupMenuItem(child: Text("Option 3"), value: "Option 3"),
          ];
        },
        child: Container(
          padding: EdgeInsets.all(10),
          color: Colors.blue,
          child: Row(
            children: [
              Icon(Icons.more_vert, color: Colors.white),
              SizedBox(width: 8),
              Text(
                chosenValue,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
