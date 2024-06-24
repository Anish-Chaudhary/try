
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {


  

  @override
  _RegisterPageState createState() => _RegisterPageState();
  
}

class _RegisterPageState extends State <RegisterPage > {

  String FullName ='';
  String Address ='';
  String Contact ='';
  String Password ='';
  String ConfirmPassword= '';
  
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
          FullName = value;
        });
      }, decoration: InputDecoration(labelText: 'FullName'),
      ),
      SizedBox(height: 15.0,),
      TextField(onChanged: (value) {
        setState(() {
          Address = value;
        } 
        );
      },
      decoration: InputDecoration(labelText: 'Address'),
      
      ),
      SizedBox(height: 15.0,),
      TextField(onChanged: (value) {
        setState(() {
      Contact = value;
        } 
        );
      },
      decoration: InputDecoration(labelText: 'Contact'),
      
      ),
       SizedBox(height: 15.0,),
      TextField(onChanged: (value) {
        setState(() {
          Password = value;
        } 
        );
      },
      decoration: InputDecoration(labelText: 'Password'),
      
      ),
       SizedBox(height: 15.0,),
      TextField(onChanged: (value) {
        setState(() {
          ConfirmPassword = value;
        } 
        );
      },
      decoration: InputDecoration(labelText: 'Confirmpassword'),
      
      ),
      SizedBox(height: 32.0),
  

  ElevatedButton(onPressed: () {
        print('Username: $FullName');
        print('Address: $Address');
          print('Contact: $Contact');
        print('Password: $Password');
          print('PasswordConfirm: $ConfirmPassword');
      },
      child: Text("Register"),
      ),


  ],


      ),

)


  




);
  }
}