import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
 bool pass = true;
 bool pass2 = true;
  TextEditingController namecntroller1 = new TextEditingController();
  TextEditingController passwordcontroller1 = new TextEditingController();
  TextEditingController cnpasswordcontroller1 = new TextEditingController();
  TextEditingController agecontroller1 = new TextEditingController();
  TextEditingController phonecontroller1 = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){
        Navigator.of(context).pushReplacementNamed('/LogIn');
      },

      child: Scaffold
        (
        backgroundColor: Colors.white,

        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          toolbarHeight: 80,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_sharp, color: Colors.black,),
            onPressed: (){
              Navigator.of(context).pushReplacementNamed('/LogIn');
            },
          ),
          title:Image.asset('assets/Icons/Create.png', width: 60, height: 60,) ,
        ),
        body: Form(
          key: _formKey,
          child: Padding(
            padding:  EdgeInsets.only(left: 40, right: 40, top: 50),
            child: ListView(
              children: [
                Container(
                    alignment: Alignment.centerLeft,
                    child: Text('Welcome', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),)),
                Padding(
                  padding: EdgeInsets.only(top: 7, left: 5),
                  child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text('Please Login', style: TextStyle(color: Color(0xffCBCBCB), fontSize: 16, fontWeight: FontWeight.bold),)),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                  child: Container(
                    color: Colors.white,
                    child: TextFormField(
                      controller: namecntroller1,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                      onSaved: (value){
                      },
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'SFUIDisplay'
                      ),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'email',
                          prefixIcon: Icon(Icons.person, color: Color(0xFF604621),),
                          labelStyle: TextStyle(
                              color: Color(0xFF787878),
                              fontSize: 15
                          )
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Container(
                    color: Colors.white,
                    child: TextFormField(
                      controller: passwordcontroller1,
                      keyboardType: TextInputType.text,
                      obscureText: pass ,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                      onSaved: (value){
                      },
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'SFUIDisplay'
                      ),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          prefixIcon: GestureDetector(
                            onTap:(){
                              setState(() {
                                if(pass == true){
                                  pass = false;
                                }else {
                                  pass = true;
                                }
                              });
                            },
                              child: Icon(pass == true? Icons.lock_outline : Icons.lock_open_rounded, color: Color(0xFF604621),)),
                          labelStyle: TextStyle(
                              color: Color(0xFF787878),
                              fontSize: 15
                          )
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(bottom: 10),
                  child: Container(
                    color: Colors.white,
                    child: TextFormField(
                      controller: cnpasswordcontroller1,
                      keyboardType: TextInputType.text,
                      obscureText: pass2 ,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                      onSaved: (value){
                      },
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'SFUIDisplay'
                      ),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Confirm Password',
                          prefixIcon: GestureDetector(
                              onTap:(){
                                setState(() {
                                  if(pass2 == true){
                                    pass2 = false;
                                  }else {
                                    pass2 = true;
                                  }
                                });
                              },
                              child: Icon(pass2 == true? Icons.lock_outline : Icons.lock_open_rounded, color: Color(0xFF604621),)),
                          labelStyle: TextStyle(
                              color: Color(0xFF787878),
                              fontSize: 15
                          )
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Container(
                    color: Colors.white,
                    child: TextFormField(
                      controller: agecontroller1,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter your age';
                        }
                        return null;
                      },
                      onSaved: (value){
                      },
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'SFUIDisplay'
                      ),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Age',
                          prefixIcon: Icon(Icons.person, color: Color(0xFF604621),),
                          labelStyle: TextStyle(
                              color: Color(0xFF787878),
                              fontSize: 15
                          )
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: TextFormField(
                    controller: phonecontroller1,
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter your phone number';
                      }
                      return null;
                    },
                    onSaved: (value){
                    },
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'SFUIDisplay'
                    ),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Phone No',
                        prefixIcon: Icon(Icons.phone, color: Color(0xFF604621),),
                        labelStyle: TextStyle(
                            color: Color(0xFF787878),
                            fontSize: 15
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: InkWell(
                    onTap: (){

                      if (_formKey.currentState.validate()) {
                        Navigator.of(context).pushReplacementNamed('/OtpScreen');
                      }
                    },

                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xff00B5F7),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(right: 50),
                            child: Container(
                                child: Text('Sign Up', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20, color: Color(0xffffffff)),)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Container(

                                child: Image.asset('assets/img/GoSign.png', height: 40, width: 40,)),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 80),
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                          children: [
                            TextSpan(
                                text: "If you have account: ",
                                style: TextStyle(
                                  fontFamily: 'SFUIDisplay',
                                  color: Colors.black,
                                  fontSize: 15,
                                )
                            ),
                            TextSpan(
                                text: "sign in",
                                style: TextStyle(
                                    fontFamily: 'SFUIDisplay',
                                    color: Color(0xff4EB1FE),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                                recognizer: TapGestureRecognizer()..onTap = (){
                                  Navigator.of(context).pushReplacementNamed('/OtpScreen');
                                }
                            ),
                          ]
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
