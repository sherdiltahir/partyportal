import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class Selfie extends StatefulWidget {
  @override
  _SelfieState createState() => _SelfieState();
}

class _SelfieState extends State<Selfie> {
  File _image;
  final picker = ImagePicker();
  bool check1 = true;
  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:  AppBar(

        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 80,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_sharp, color: Colors.black,),
          onPressed: (){
            Navigator.of(context).pushReplacementNamed('/Welcome');
          },
        ),
        title:Image.asset('assets/img/Create.png', width: 60, height: 60,) ,
      ),
      body:Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          ListView(
            children: [

               Padding(
                 padding: EdgeInsets.only(left: 20, top: 30),
                 child: Text('Selfies', style: GoogleFonts.poppins(
            fontWeight: FontWeight.w700,
            fontSize: size.width * 0.08,
            color: Colors.black,
          ),),
               ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          check1=true;
                        });
                      },
                      child: Container(
                        height:35,
                        width: 110,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: check1== true? Colors.lightBlue : Colors.white,
                            border: Border.all(color: check1 == true ? Colors.lightBlue : Colors.grey,width: 1)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Host Selfies",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: size.width * 0.040,
                                color: check1 == true ? Colors.white : Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 5,),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          check1=false;
                        });
                      },
                      child:Container(
                        height:35,
                        width: 110,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: check1== false? Colors.lightBlue : Colors.white,
                            border: Border.all(color: check1 == false ? Colors.lightBlue : Colors.grey,width: 1)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Host Selfies",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: size.width * 0.040,
                                color: check1 == false ? Colors.white : Colors.black,
                              ),
                            )
                          ],

                        ),
                      ),
                    ),
                  ],
                ),
              ),
              check1 == true ? ListView(
                shrinkWrap: true,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10, left: 20),
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Image.asset("assets/images/bigoval1.png"),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text('Alina', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 19),),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),

                          height: 200,
                          child: Image.asset('assets/img/12.PNG',  ),
                        ),
                      ],
                    ),
                  ),
                ],
              ): ListView(
                shrinkWrap: true,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10, left: 20),
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Image.asset("assets/images/bigoval1.png"),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text('Alina', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 19),),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: 300,
                        child: Image.asset('assets/img/14.PNG',fit: BoxFit.fitWidth, ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20, right: 20),
                child: InkWell(
                    onTap: getImage,
                    child: Image.asset('assets/img/PLAY PARTY.png', width: 70, height: 70,))),
        ],
      ),
    );
  }
}
