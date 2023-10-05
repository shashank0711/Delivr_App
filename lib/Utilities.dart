import 'package:flutter/material.dart';

Widget LoginSignUpField( String text, controller,String labeltext, bool obscure, validation ){
  return  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Padding(
                padding:  const EdgeInsets.fromLTRB(10, 0, 0, 10),
                child:  Text( text ,
                  style: const TextStyle(
                  fontFamily: 'fonts',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  ),
                ),
              ),


            // SizedBox(height: size.height*.015,),


            TextFormField(
              controller: controller,
              obscureText: obscure,
              textInputAction: TextInputAction.next,
                style: const TextStyle(
                  fontFamily: 'font',
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  ),

              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: validation,
              decoration: InputDecoration(
                hintText: labeltext,
                labelStyle: const TextStyle(
                  fontFamily: 'font',
                  color: Colors.black45,
                  ),
              contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.black45,
                  width: 1.2,
                  ),
                ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.black45,
                  ),
                ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.white70,
                  ),
                ),
                ),
              ),
           ],
         );
}


//sign up button
