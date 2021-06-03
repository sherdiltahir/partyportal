import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:pinput/pin_put/pin_put.dart';

class OtpScreen extends StatefulWidget {
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController _pinPutController = TextEditingController();
  FocusNode _pinPutFocusNode = FocusNode();
  BoxDecoration pinPutDecoration = BoxDecoration(
      color:  Colors.white,
      // borderRadius: BorderRadius.all(Radius.circular(100)),
      shape: BoxShape.circle,
      border: Border.all(color: Colors.black,width: 1)
    // border: Border(
    //   left: BorderSide(width: 2.0,color:  Color(0xffDEDEDE))
    // )
    // border: Border(
    //   // bottom: BorderSide(width: 2.0,color:  Color(0xffDEDEDE)),
    // )
  );
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: (){
        Navigator.of(context).pushReplacementNamed('/SignUp');
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(image: AssetImage("assets/images/background.JPG"), fit: BoxFit.cover,),
              ),
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 60,left: 20),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.of(context).pushReplacementNamed('/SignUp');
                        },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                            size: 30,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 110),
                          child: Image.asset('assets/Icons/Create.png',height: 60,width: 60,),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25,top: 50),
                    child: Column(
// mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text(
                          "Enter OTP",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            fontSize: size.width * 0.06,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          "Please Enter one time password",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: size.width * 0.035,
                            color: Colors.grey,
                          ),

                        ),

                      ],

                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 38,right: 38),
                          child: Container(

                            width: MediaQuery.of(context).size.width-76,
                            child: PinPut(
                              withCursor: true,
                              fieldsCount: 5,
                              textStyle:  TextStyle(fontSize: 28, color: Color(0xFF1D1D1D)),
                              eachFieldWidth: size.width*0.038,
                              eachFieldHeight: 30.0,
                              focusNode: _pinPutFocusNode,
                              controller: _pinPutController,
                              submittedFieldDecoration: pinPutDecoration,
                              selectedFieldDecoration: pinPutDecoration,
                              followingFieldDecoration: pinPutDecoration,
                              pinAnimationType: PinAnimationType.fade,
                              // onSaved: (smsCode){},
                            ),
                          ),
                        ),

                        SizedBox(height: 40),

                        InkWell(
                          onTap: (){
                            Navigator.of(context).pushReplacementNamed('/OnBoarding');
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Container(
                              height: 55.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.lightBlue,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Center(
                                      child: Text(
                                        "Sign In",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: size.width*0.055

                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Center(
                                      child: Container(
                                          height: 45,
                                          width: 45,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            color: Colors.white,
                                          ),
                                          child: Center(
                                            child: Icon(
                                              Icons.arrow_forward,
                                              color: Colors.lightBlue,
                                              size: 25,
                                            ),
                                          )
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: EdgeInsets.only(left: 35),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Forgot Password?",
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: size.width*0.035

                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // height: 70,
                          // width: 70,
                          child: Image.asset("assets/images/otp.png",height: 180,width: 180,),
                        ),
                        SizedBox(height: 20),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: [
                        //     Text(
                        //       "Don't have an Account?",
                        //       style: GoogleFonts.poppins(
                        //           color: Colors.black,
                        //           fontWeight: FontWeight.w500,
                        //           fontSize: size.width*0.045
                        //       ),
                        //     ),
                        //     SizedBox(width: 10),
                        //     InkWell(
                        //       onTap: (){
                        //         // Navigator.push(context,
                        //         //     MaterialPageRoute(builder: (context) => SignInScreen()));
                        //       },
                        //       child: Text(
                        //         "Sign Up",
                        //         style: GoogleFonts.poppins(
                        //             color: Colors.lightBlueAccent,
                        //             fontWeight: FontWeight.w500,
                        //             fontSize: size.width*0.045
                        //
                        //         ),
                        //       ),
                        //     ),
                        //   ],
                        // ),
                      ],
                    ),
                  ),

                ],

              ),
            ),
          ],
        ),
      ),
    );
  }
}
