import 'package:flutter/material.dart';


class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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

              Image.asset('assets/icon.png'),

              SizedBox(height: size.height*.043,),

              const Text('Sign in your account',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 17,
                fontFamily: 'font',
              ),),



            ],
          ),
        ),

        
      ),
    );
  }
}
