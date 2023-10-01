import 'package:flutter/material.dart';
import 'package:delivr/PhoneNumberPage.dart';
import 'SignInPage.dart';

class afterSpalsh extends StatefulWidget {
  const afterSpalsh({Key? key}) : super(key: key);

  @override
  State<afterSpalsh> createState() => _afterSpalshState();
}

class _afterSpalshState extends State<afterSpalsh> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          child: Image.asset('assets/delivr_main.png',
            fit: BoxFit.cover,
            height: size.height,
            width: size.width,
          ),
        ),



        Column(
          children: [
            SizedBox(
              height: size.height*.88,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Container(
                height: size.height*.07,
                width: size.width,
                child: ElevatedButton(
                  onLongPress: (){},
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignInPage()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xffFBAF02),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),

                    ),
                    child: const Text('NEXT',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'fonts',
                      letterSpacing: 4,
                      ),
                    ),
                ),
              ),
            )
          ],
        ),



      ],
    );
  }
}


