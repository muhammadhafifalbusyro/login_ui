import 'package:flutter/material.dart';
import 'package:login_ui/components/my_button.dart';
import 'package:login_ui/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //text editing controller
  final usernameController = TextEditingController();
  final passwordCOntroller = TextEditingController();

  //sign in user method
  void signIn(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              //logo
              SizedBox(height: 50,),
              Icon(
                Icons.lock,
                size: 100,
              ),
              SizedBox(height: 50,),
      
              //welcome back, you've been missed!
              Text(
                'Welcome back, you\'ve been missed!',
                style: TextStyle(
                  color:Colors.grey[700],
                  fontSize: 16
                )
                ),
              SizedBox(height: 25,),
      
              //username textfield
              MyTextField(controller: usernameController,hintText: 'Username',obscureText: false,),
              SizedBox(height: 12,),

              //password textfield
              MyTextField(controller: passwordCOntroller,hintText: 'Password',obscureText: true,),
              SizedBox(height: 12,),
      
              //forgot password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot password?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12,),

              //Sign in button
              MyButton(onTap: signIn,),
              SizedBox(height: 20,),
      
              //or continue with 
              Row(
                children: [
                  Expanded(child: Divider(color: Colors.grey[400],thickness: .5,)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'or continue with',
                      style: TextStyle(color: Colors.grey),
                      ),
                  ),
                  Expanded(child: Divider(color: Colors.grey[400],thickness: .5,)),
                ],
              ),
                SizedBox(height: 20,),
              //google + apple sign in button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('lib/images/google_ic.png',height: 72,),
                    SizedBox(width: 20,),
                    Image.asset('lib/images/apple_ic.png',height: 72,),
                  ],
                ),
              )
      
              //not member? register now
      
            ],
          ),
        ),
      ),
    );
  }
}