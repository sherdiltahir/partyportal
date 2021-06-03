import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:partyportal/views/onBoarding/onBoarding.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  GoogleSignIn gsignin = GoogleSignIn(scopes: ['email']);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()=>exit(0),
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 40, right: 40, top: 50),
          child: ListView(
            children: [
              Stack(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 300,
                    child: Image.asset('assets/img/Welcome.png'),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text('Welcome', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, ),),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).pushReplacementNamed('/LogIn');
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                      boxShadow:[
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), //color of shadow
                          spreadRadius: 5, //spread radius
                          blurRadius: 7, // blur radius
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
              child: Row(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 10),
                      child: Container(
                          alignment: AlignmentDirectional.centerStart,
                          child: Image.asset('assets/img/SignIn.png', height: 40, width: 40,)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 60),
                      child: Container(
                          child: Text('Sign In', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20, color: Color(0xff787878)),)),
                    ),
                  ],
              ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).pushReplacementNamed('/SignUp');
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                      boxShadow:[
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), //color of shadow
                          spreadRadius: 5, //spread radius
                          blurRadius: 7, // blur radius
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: 10),
                          child: Container(
                              alignment: AlignmentDirectional.centerStart,
                              child: Image.asset('assets/img/SignUp.png', height: 40, width: 40,)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 60),
                          child: Container(
                              child: Text('Sign Up', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20, color: Color(0xff787878)),)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding:  EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 1,
                      width: 100,
                      color: Color(0xffE2DADA),
                    ),
                    SizedBox(width: 10,),
                    Text('OR', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15),),
                    SizedBox(width: 10,),
                    Container(
                      height: 1,
                      width: 100,
                      color: Color(0xffE2DADA),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                    alignment: AlignmentDirectional.center,
                    child: Text('Sign Up With Social Networks')),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  GestureDetector(onTap: ()async{
try{
  GoogleSignInAccount googleSignInAccount = await gsignin.signIn();
  var email =googleSignInAccount.email;
  if(email!=null){
   Navigator.push(context, MaterialPageRoute(builder: (context)=>onBoarding()));
  }
  print(email);
}catch(e){
  print(e);
}
                  },child: Image.asset('assets/img/google.png', width: 40, height: 40,)),
                ],),
              )
            ],
          ),
        ),
      ),
    );
  }
}
