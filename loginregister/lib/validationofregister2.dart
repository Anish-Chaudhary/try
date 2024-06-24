import 'package:flutter/material.dart';

class RegisterPage2 extends StatefulWidget {


  

  @override
  _RegisterPageState createState() => _RegisterPageState();
  
}

class _RegisterPageState extends State <RegisterPage2 > {
  final GlobalKey <FormState>   _formkey=   GlobalKey <FormState>();
  TextEditingController _FullNameController=TextEditingController();
  TextEditingController _EmailController=TextEditingController();
  TextEditingController _PasswordController=TextEditingController();
  TextEditingController _ConfirmpasswordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Text('Register Page'),
  



),
body: Padding(padding: EdgeInsets.all(16.0),
child: Form(key:_formkey,child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    TextFormField(
      controller: _FullNameController,decoration: InputDecoration(labelText: 'FullName'),
      validator: (value) {
        if(value==null

        || value.isEmpty){
          return 'please enter your full name';
          
        }
        return null;
      },

    ),
    SizedBox(height: 16,),
    TextFormField(
      controller: _EmailController,decoration: InputDecoration(labelText: 'Email'),
      validator: (value) {
        if(value==null

        || value.isEmpty){
          return 'please enter your Email';
          
        }
        return null;
      },

    ),
    SizedBox(height: 16,),
    TextFormField(
      controller: _PasswordController,decoration: InputDecoration(labelText: 'password'),
      validator: (value) {
        if(value==null

        || value.isEmpty){
          return 'please enter your password';
          
        }
        return null;
      },

    ),
    SizedBox(height: 16,),
    TextFormField(
      controller: _ConfirmpasswordController,decoration: InputDecoration(labelText: 'confirmpassword'),
      validator: (value) {
        if(value==null

        || value.isEmpty){
          return 'please enter your confirm password';
          
        }
        if (!RegExp(r'^(?=.*[A-Z])(?=.*\d).*$').hasMatch(value)) {
                    return 'Password must contain at least one uppercase letter and one number';
}
                  // Add more password validation if needed
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _ConfirmpasswordController,
                obscureText: true,
                decoration: InputDecoration(labelText: 'Confirm Password'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please confirm your password';
                  }
                  if (value != _PasswordController.text) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
              ),
              SizedBox(height: 32.0),
              ElevatedButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    // Validation passed
                    // Perform registration logic here
                    print('Full Name: ${_FullNameController.text}');
                    print('Email: ${_EmailController.text}');

                    print('Password: ${_PasswordController.text}');
                    print('Confirm Password: ${_ConfirmpasswordController.text}');
                  }
                },
                child: Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

