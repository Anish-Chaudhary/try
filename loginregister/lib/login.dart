
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {


  

  @override
  _LoginPageState createState() => _LoginPageState();
  
}

class _LoginPageState extends State <LoginPage > {

  String username ='';
  String password ='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Text('Login Page'),



),
body: Padding(padding: EdgeInsets.all(16.0),
child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    TextField(
      onChanged: (value) {
        setState(() {
          username = value;
        });
      }, decoration: InputDecoration(labelText: 'username'),
      ),
      SizedBox(height: 16.0,),
      TextField(
        onChanged: (value) {
          setState(() {
            password= value;
          });
        },
        obscureText: true,
        decoration: InputDecoration(labelText: 'Password'),
      ),
      SizedBox(height: 32.0,),

      ElevatedButton(onPressed: () {
        print('Username: $username');
        print('Password: $password');
      },
      child: Text("Login"),
      ),
  
  ],
),
),











    );
  }
}