import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:delivr/Utilities.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

  final emailController =  TextEditingController();
  final passwordController =  TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(

        //first two objects
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(

            children: [
              SizedBox(height: size.height*.05,),

              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Image.asset('assets/icon.png'),
              ),

              SizedBox(height: size.height*.035,),

              const Text('Sign in your account',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 17,
                fontFamily: 'font',
              ),),

              SizedBox(height: size.height*.035,),



               LoginSignUpField('Email', emailController, 'e.g. abc@xyz.com', false,
                     (email) => null,
                 // email !=null && !EmailValidator.validate(email)
                 //     ? 'Enter a valid email'
                 //     : null,
               ),

              SizedBox(height: size.height*.02,),

              LoginSignUpField('Password', passwordController, 'password' , true, (value) => null),




            ],
          ),
        ),

        
      ),
    );
  }
}
