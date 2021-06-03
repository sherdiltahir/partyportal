import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class PartyBuild extends StatefulWidget {
  @override
  _PartyBuildState createState() => _PartyBuildState();
}

class _PartyBuildState extends State<PartyBuild> {
  TextEditingController namecntroller = new TextEditingController();
  TextEditingController passwordcontroller = new TextEditingController();
  bool small = true;
  bool medium = false;
  bool large = false;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){
        Navigator.of(context).pushReplacementNamed('/BottomScreen');
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
              Navigator.of(context).pushReplacementNamed('/BottomScreen');
            },
          ),
          title:Image.asset('assets/img/Create.png', width: 60, height: 60,) ,
        ),
        body: Stack(
          children: [

            Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(image: AssetImage("assets/images/background.JPG"), fit: BoxFit.cover,),
                // color: Colors.grey.withOpacity(0.88),
              ),
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 50, left: 40),
                    child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text('Build Your Party', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),)),
                  ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 15),
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFF7F5FF).withOpacity(0.38),
                        // blurRadius: 0.5,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: (){
                            setState(() {
                              // ignore: unnecessary_statements
                              small = true;
                              medium = false;
                              large = false;
                            });
                          },
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                               color: small == true ? Colors.blue: Colors.white,
                              borderRadius: BorderRadius.circular(40),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFFF7F5FF).withOpacity(0.38),
                                  // blurRadius: 0.5,
                                  spreadRadius: 1,
                                ),
                              ],
                            ),
                            child: Center(child: Text('Small', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: small == true ? Colors.white: Colors.black),)),
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: InkWell(
                            onTap: (){
                              setState(() {
                                // ignore: unnecessary_statements
                                small = false;
                                medium = true;
                                large = false;
                              });
                            },
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                color: medium == true ? Colors.blue: Colors.white,
                                borderRadius: BorderRadius.circular(40),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xFFF7F5FF).withOpacity(0.38),
                                    // blurRadius: 0.5,
                                    spreadRadius: 1,
                                  ),
                                ],
                              ),
                              child: Center(child: Text('Medium', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: medium == true ? Colors.white: Colors.black),)),
                            ),
                          ),
                      ),
                      Expanded(
                          flex: 1,
                          child: InkWell(
                            onTap: (){
                              setState(() {
                                // ignore: unnecessary_statements
                                small = false;
                                medium = false;
                                large = true;
                              });
                            },
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                color: large == true ? Colors.blue: Colors.white,
                                borderRadius: BorderRadius.circular(40),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xFFF7F5FF).withOpacity(0.38),
                                    // blurRadius: 0.5,
                                    spreadRadius: 1,
                                  ),
                                ],
                              ),
                              child: Center(child: Text('Large', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: large == true ? Colors.white: Colors.black),)),
                            ),
                          ),
                      ),

                    ],
                  ),
                ),
              ),
                  Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Container(
                      height: 300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                             Image.asset('assets/img/Party1.png', ),
                              Padding(
                                padding: EdgeInsets.only(top: 30),
                                child: Container(
                                  alignment: AlignmentDirectional.center,
                                  width: 100,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow:[
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5), //color of shadow
                                        spreadRadius: 5, //spread radius
                                        blurRadius: 7, // blur radius
                                        offset: Offset(0, 2), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child:TextFormField(
                                    textAlignVertical: TextAlignVertical.center,
                                    textAlign: TextAlign.center,
                                    keyboardType: TextInputType.number,
                                    style: TextStyle(
                                      fontSize: 10,
                                        color: Colors.black,
                                        fontFamily: 'SFUIDisplay'
                                    ),
                                    decoration: InputDecoration(
                                        hintText: 'How many Female?',
                                        hintStyle: TextStyle(
                                            fontSize: 8
                                        ),

                                        border: OutlineInputBorder(),

                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Column(
                              children: [
                                Image.asset('assets/img/Party2.png'),
                                Padding(
                                  padding: EdgeInsets.only(top: 30),
                                  child: Container(
                                    alignment: AlignmentDirectional.center,
                                    width: 100,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow:[
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5), //color of shadow
                                          spreadRadius: 5, //spread radius
                                          blurRadius: 7, // blur radius
                                          offset: Offset(0, 2), // changes position of shadow
                                        ),
                                      ],

                                    ),
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'SFUIDisplay'
                                      ),
                                      decoration: InputDecoration(
                                        hintText: 'How many male?',
                                          hintStyle: TextStyle(

                                            fontSize: 9
                                          ),
                                          border: OutlineInputBorder(),
                                          labelStyle: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10,
                                            fontWeight: FontWeight.bold
                                          )
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
                  ),

                 InkWell(
                     onTap: (){
                       Navigator.of(context).pushReplacementNamed('/BuildYourParty');
                     },
                     child: Image.asset('assets/img/PLAY PARTY.png', width: 140, height: 140,)),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
