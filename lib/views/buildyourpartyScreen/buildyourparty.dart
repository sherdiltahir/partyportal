import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:pinput/pin_put/pin_put.dart';


class BuildPartyScreen extends StatefulWidget {
  @override
  _BuildPartyScreenState createState() => _BuildPartyScreenState();
}

class _BuildPartyScreenState extends State<BuildPartyScreen> {
bool check1 = true;
bool check2 = false;
bool check3 = false;
var time = DateTime.now();
String formated;
DateTime mytime = DateTime.now();
 _showDateDialog(BuildContext context) {
  // flutter defined function
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    builder: (BuildContext context) {
      // return object of type Dialog
      return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        height: 250,
        child: CupertinoDatePicker(
        initialDateTime: time,
          mode: CupertinoDatePickerMode.date,
          maximumYear: 2026,
          onDateTimeChanged: (value){
          setState(() {
            time = value;
            formated = DateFormat("yMd").format(time);
          });
          },
      ),
      );
    },
  );
}
String timeformated;
var thistime;
 _showTimeDialog(BuildContext context) {
  // flutter defined function
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    builder: (BuildContext context) {
      // return object of type Dialog
      return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        height: 250,
        child: CupertinoTimerPicker(
          mode: CupertinoTimerPickerMode.ms,
          onTimerDurationChanged: (value){
          setState(() {
            thistime = value;
            timeformated = thistime.toString();
          });
          },
      ),
      );
    },
  );
}

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: WillPopScope(
        onWillPop: (){
          Navigator.of(context).pushReplacementNamed('/PartyBuild');
        },
        child: Stack(
          children: [
            Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(image: AssetImage("assets/images/background.JPG"), fit: BoxFit.cover,),
                // color: Colors.grey.withOpacity(0.88),
              ),
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 60,left: 20),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.of(context).pushReplacementNamed('/PartyBuild');
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                            size: 30,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 110),
                          child: Image.asset('assets/img/Create.png',height: 60,width: 60,),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  check1=true;
                                  check2=false;
                                  check3=false;
                                });
                              },
                              child: Container(
                                height:40,
                                width: 130,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white,
                                  border: Border.all(color: check1 == true ? Colors.lightBlue : Colors.grey,width: 1)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    check1 == true ?  Icon(
                                      Icons.check,
                                      color: check1 == true ? Colors.lightBlue : Colors.black,
                                      size: 20,
                                    ):Container(),
                                    SizedBox(width: 8,),
                                    Text("Pre-Game",
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: size.width * 0.040,
                                        color: check1 == true ? Colors.lightBlue : Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 15,),
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  check1=false;
                                  check2=true;
                                  check3=false;
                                });
                              },
                              child: Container(
                                height:40,
                                width: 130,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.white,
                                    border: Border.all(color: check2 == true ? Colors.lightBlue : Colors.grey,width: 1)
                                ),
                                child:    Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    check2 == true ?  Icon(
                                      Icons.check,
                                      color: check2 == true ? Colors.lightBlue : Colors.black,
                                      size: 20,
                                    ):Container(),
                                    SizedBox(width: 8,),
                                    Text("Game Time",
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: size.width * 0.040,
                                        color: check2 == true ? Colors.lightBlue : Colors.black,
                                      ),
                                    ),
                                  ],
                                )
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15,),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              check1=false;
                              check2=false;
                              check3=true;
                            });
                          },
                          child: Container(
                              height:40,
                              width: 130,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white,
                                  border: Border.all(color: check3 == true ? Colors.lightBlue : Colors.grey,width: 1)
                              ),
                              child:    Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  check3 == true ?  Icon(
                                    Icons.check,
                                    color: check3 == true ? Colors.lightBlue : Colors.black,
                                    size: 20,
                                  ):Container(),
                                  SizedBox(width: 8,),
                                  Text("After Party",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: size.width * 0.040,
                                      color: check3 == true ? Colors.lightBlue : Colors.black,
                                    ),
                                  ),
                                ],
                              )
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,right:20,top: 20
                    ),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("when",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: size.width * 0.040,
                            color:  Colors.black,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5,right: 21),
                          child: GestureDetector(
                            onTap: (){
                              _showDateDialog(context);
                            },
                            child: Container(
                              height:50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 5,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                                width: MediaQuery.of(context).size.width-32,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Container(
                                    alignment: AlignmentDirectional.centerStart,
                                    child: Text(formated == null?"Input your Date":formated.toString(),
                                      style: GoogleFonts.openSans( //fontFamily: "Open Sans",
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        fontSize:  size.width*0.036,
                                        color: Colors.grey),),
                                  ),
                                ),
                            ),
                          ),

                        ),
                      ],
                    ),


                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20,right:20,top: 20
                    ),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Where?",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: size.width * 0.040,
                            color:  Colors.black,
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 5,right: 21),
                          child: Container(
                              height:50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 5,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              width: MediaQuery.of(context).size.width-32,
                              child: Container(
                                alignment: AlignmentDirectional.centerStart,
                                child:      TextField(

                                  keyboardType: TextInputType.text,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'SFUIDisplay'
                                  ),
                                  decoration: InputDecoration(
hintText:'Type Here' ,
                                      hintStyle: GoogleFonts.openSans( //fontFamily: "Open Sans",
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal,
                                          fontSize:  size.width*0.036,
                                          color: Colors.grey),
                                      border: OutlineInputBorder(),

                                ),
                              ),),),

                        ),
                      ],
                    ),


                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20,right:20,top: 20
                    ),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("How Long?",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: size.width * 0.040,
                            color:  Colors.black,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5,right: 21),
                          child: GestureDetector(
                            onTap: (){
                              _showTimeDialog(context);
                            },
                            child: Container(
                                height:50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 5,
                                      offset: Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                width: MediaQuery.of(context).size.width-32,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Container(
                                    alignment: AlignmentDirectional.centerStart,
                                    child: Text(timeformated==null?"Input Time":timeformated.toString(),
                                      style: GoogleFonts.openSans( //fontFamily: "Open Sans",
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal,
                                          fontSize:  size.width*0.036,
                                          color: Colors.grey),),
                                  ),
                                ),),
                          ),

                        ),
                      ],
                    ),

                  ),

               Padding(
                 padding: const EdgeInsets.only(top: 40, bottom: 10),
                 child: Center(
                   child: InkWell(
                     onTap: (){
                       Navigator.of(context).pushReplacementNamed('/GameSelected');

                     },
                     child: Container(
                       height: 120,
                       width:120,
                       child: Image.asset("assets/Icons/PLAY PARTY.png"),
                     ),
                   ),
                 ),
               )

                ],

              ),
            ),
          ],
        ),
      ),
    );
  }
}

