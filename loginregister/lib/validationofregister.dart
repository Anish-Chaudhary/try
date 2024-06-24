
import 'package:flutter/material.dart';

class ValidationPage extends StatefulWidget {


  

  @override
  _ValidationPageState createState() => _ValidationPageState();
  
}

class _ValidationPageState extends State <ValidationPage > {
  TextEditingController _usernameController= TextEditingController();
  TextEditingController _passwordController= TextEditingController();


  
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
      controller: _usernameController,
      decoration: InputDecoration(labelText: 'Username'),
    ),
       
      SizedBox(height: 16.0,),
      TextField( controller: _passwordController,
      decoration: InputDecoration(labelText: 'Password'),
    ),
       
    
       
      
      SizedBox(height: 32.0,),

      ElevatedButton(onPressed: () {

        String username = _usernameController.text.trim();
        String password = _passwordController.text.trim();


if(username=='anish@gmail.com' && password=='Anish@123'){
  print('Login successfull');
}else{
  print('Login failed.please check your credentials');
}

        

      },
      child: Text("Login"),
      ),
  
  ],
),
),











    );
  }
}