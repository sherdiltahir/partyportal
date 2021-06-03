import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'onboardingdata.dart';
import 'package:google_fonts/google_fonts.dart';

class onBoarding extends StatefulWidget {
  @override
  _onBoardingState createState() => _onBoardingState();
}

class _onBoardingState extends State<onBoarding> {
  int total = onboardingall().length;
  PageController pageController = PageController();
  int indexCount;
  static const _kDuration = const Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;
  onNext()
  {
    pageController.nextPage(duration: _kDuration, curve: _kCurve);
  }
  @override
  void initState()
  {
    indexCount=0;
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: (){
        exit(0);
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: GestureDetector
            (
            onTap: ()
            {
              Navigator.of(context).pushReplacementNamed('/SelectLogin');
            },
            child: (indexCount==2)?
            Container():
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children:
              [
                Text(
                  "Skip",
                  style: GoogleFonts.openSans(
                      color: Color(0xFF00A8E8),
                      fontSize: size.width*0.035,
                      fontWeight: FontWeight.w700),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3),
                  child: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Color(0xFF00A8E8),
                    size: size.width*0.035,
                  ),
                )
              ],
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: PageView.builder
          (
          onPageChanged: (i)
          {
            setState(() {
              indexCount=i;
              print(indexCount);
            });
          },
          controller: pageController,
          itemCount: onboardingall().length,
          itemBuilder: (BuildContext context, int index)
          {
            var io = onboardingall()[index];
            return Column(
              children: [
                Expanded(
                  flex: 6,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Container(child: Center(
                        child: Image.asset(io.image_url,height:315,width: 322.32,)))],
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    color: Colors.white,
                    // decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.only(
                    //         topRight: Radius.circular(20),
                    //         topLeft: Radius.circular(20)),
                    //     color: Color(0xFF221573)),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 50,
                                ),
                                child: Text(
                                  io.title,
                                  style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w700,
                                      fontSize:   size.width*0.062,
                                      //fontFamily: "Open Sans",
                                      color: Color(0xFF00B5F7)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: Padding(
                              padding: EdgeInsets.only(left: 50, right: 30),
                              child: Text(
                                io.text,
                                style: GoogleFonts.openSans(
                                    wordSpacing: 1,
                                    color: Color(0xff808080),
                                    //fontFamily: "Open Sans",
                                    fontSize: size.width*0.035,
                                    fontWeight: FontWeight.w400),
                              ),
                            )),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.only(left: 50),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    for (int i = 0; i < total; i++)
                                      i == index
                                          ? Padding(
                                        padding: EdgeInsets.only(
                                            left: 5, right: 5),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              color: Color(0xff00B5F7)),
                                          height: 10,
                                          width: 20,
                                        ),
                                      )
                                          : Padding(
                                        padding: EdgeInsets.only(
                                            left: 5, right: 5),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.black54,
                                            border: Border.all(width: 1, color: Colors.black),
                                          ),
                                          height: 10,
                                          width: 10,
                                        ),
                                      ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width - 200,
                                    ),
                                    InkWell(
                                      onTap: ()
                                      {
                                        if (index != 3)
                                        {
                                          setState(() {
                                            indexCount=index+1;
                                            print(indexCount);
                                          });
                                          onNext();
                                        }
                                        else
                                        {
                                          Navigator.of(context).pushReplacementNamed('/SelectLogin');
                                        }
                                      },
                                      child: index == 2
                                          ? Image.asset('assets/img/cIcon.png', width: 40,height: 40,):
                                      Icon(Icons.arrow_forward_ios_outlined, color: Colors.blue,),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
