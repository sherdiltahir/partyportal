

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:partyportal/util/Const/constants.dart';
import 'package:partyportal/views/Choosen/EventInfo.dart';
import 'package:partyportal/views/Profile/Profile.dart';
import 'package:partyportal/views/SelfieScreen/SelfieScreen.dart';
import 'dart:io';

import 'package:partyportal/views/homescreen/home.dart';

class BottomScreen extends StatefulWidget {
  @override
  _BottomScreenState createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
int currentTab = 0;

  final List<Widget> screens = [
    HomeScreen(),

  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen =  HomeScreen();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: ()=>exit(0),
      child: Stack(
        children: [
          Scaffold(
            body: Stack(
              children: [
                PageStorage(
                  child: currentScreen,
                 bucket: bucket,

                ),
              ],
            ),
            bottomNavigationBar: BottomAppBar(
              child:Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15),
                    child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:<Widget> [
                        Row(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: (){
                                setState(() {
                                  currentTab=0;
                                      currentScreen=HomeScreen();
                                });
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    b1_home,scale: 0.2,
                                    width: 25,
                                    height: 25,
                                    color: currentTab == 0 ? Color(0xff00B5F7) : Color(0XFFB7BDBF),
                                  ),
                                  SizedBox(height: 10),
                                  Text("Home",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: size.width * 0.025,
                                       color: currentTab == 0 ? Color(0xff00B5F7) : Color(0XFFB7BDBF),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: 28,),
                            InkWell(
                              onTap: (){
                                setState(() {
                                  currentTab=1;
                                  currentScreen=Selfie();
                                });
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    b1_history,scale: 0.2,
                                    width: 25,
                                    height: 25,
                                    color: currentTab == 1 ? Color(0xff00B5F7) : Color(0XFFB7BDBF),
                                  ),
                                  SizedBox(height: 10),
                                  Text("History",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: size.width * 0.025,
                                      color: currentTab == 1 ? Color(0xff00B5F7) : Color(0XFFB7BDBF),
                                    ),
                                  )
                                ],
                              ),
                            ),
// SizedBox(width:200),

                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 6,left: 5),
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Create Party",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: size.width * 0.025,
                                    color:  Colors.black ,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: (){
                                setState(() {
                                  currentTab=3;
                                  currentScreen=EventInfo();
                                });
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    b1_history,scale: 0.2,
                                    width: 25,
                                    height: 25,
                                    color: currentTab == 3 ? Color(0xff00B5F7) : Color(0XFFB7BDBF),
                                  ),
                                  SizedBox(height: 10),
                                  Text("History",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: size.width * 0.025,
                                      color: currentTab == 3 ? Color(0xff00B5F7) : Color(0XFFB7BDBF),
                                    ),
                                  )
                                ],
                              ),
                            ),

                            SizedBox(width:28),
                            InkWell(
                              onTap: (){
                                setState(() {
                                  currentTab=4;
                                  currentScreen=Profile();
                                });
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    b1_account,scale: 0.2,
                                    width: 25,
                                    height: 25,
                                    color: currentTab == 4 ? Color(0xff00B5F7) : Color(0XFFB7BDBF),
                                  ),
                                  SizedBox(height: 10),
                                  Text("Account",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: size.width * 0.025,
                                      color: currentTab == 4 ? Color(0xff00B5F7) : Color(0XFFB7BDBF),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )

                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top:size.height*0.88,left: size.width*0.42), //725
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushReplacementNamed('/PartyBuild');
                  },
                  child: Center(child: CircleAvatar(backgroundColor: Colors.transparent,child: Image.asset("assets/Icons/Create.png",))),
                ),
              ),
            ),

        ],
      ),
    );
  }

}
