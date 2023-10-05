import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class PhoneNumberPage extends StatefulWidget {
  const PhoneNumberPage({Key? key}) : super(key: key);

  @override
  State<PhoneNumberPage> createState() => _PhoneNumberPageState();
}

class _PhoneNumberPageState extends State<PhoneNumberPage> {

  bool CheckBoxValue = false;
  final phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body:SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/PhoneNumberPage.png',),

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Enter Phone Number',
                      style: TextStyle(
                        fontFamily: 'fonts',
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        letterSpacing: .7,
                      ),),


                      //textformfield for phone number
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 18, 0, 18),
                        child: TextFormField(
                          controller: phoneNumberController,
                          obscureText: false,
                          textInputAction: TextInputAction.next,
                          style: const TextStyle(
                            fontFamily: 'font',
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            // FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(10),
                          ],
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value){
                            if(value!.isEmpty)
                            {
                              return 'Enter valid number';
                            }
                            else if(value.length<10)
                            {
                              return 'Enter valid number';
                            }
                          },
                          decoration: InputDecoration(
                            hintText: 'e.g. 9999988888',
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
                      ),


                      //checkbox
                      Row(
                        children:[
                          Checkbox(
                          value: CheckBoxValue,
                          onChanged: (bool? newValue){
                           setState(() {
                             CheckBoxValue = newValue!;
                           });
                          },
                          activeColor: Color(0xffFBAF02),
                        ),

                           const Flexible(
                             child: Text.rich(
                              TextSpan(
                                text: 'By signing up I agree to the ',
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Terms of use ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      color: Color(0xffFF5963),
                                    ),
                                  ),

                                  TextSpan(
                                    text: 'and ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),

                                  TextSpan(
                                    text: 'Privacy Policy.',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      color: Color(0xffFF5963),
                                    ),
                                  ),
                                ],
                              ),
                          ),
                           ),



                        ]
                      ),


                      SizedBox(
                        height: size.height*.022,
                      ),


                      //send otp button
                      Container(
                        height: size.height*.07,
                        width: size.width,
                        child: ElevatedButton(
                          onLongPress: (){},
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xffFBAF02),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),

                          ),
                          child: const Text('Send OTP',
                            style: TextStyle(
                              fontFamily: 'fonts',
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: Colors.black87,
                              letterSpacing: .7,
                            ),),
                        ),
                      ),



                    ],
                  ),
                )
              ],
            ),
        ),
      ),
    );
  }
}
