import 'package:flutter/material.dart';


class SelectLogin extends StatefulWidget {
  @override
  _SelectLoginState createState() => _SelectLoginState();
}

class _SelectLoginState extends State<SelectLogin> {
  TextEditingController namecntroller = new TextEditingController();
  TextEditingController passwordcontroller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){
        Navigator.of(context).pushReplacementNamed('/Welcome');
      },
      child: Scaffold
        (
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          toolbarHeight: 80,
          centerTitle: true,
          title:Image.asset('assets/img/Create.png', width: 60, height: 60,) ,
        ),
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            ListView(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 50, left: 40),
                  child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text('WelCome', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),)),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 7, left: 45),
                  child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text('Select Login', style: TextStyle(color: Color(0xffCBCBCB), fontSize: 16, fontWeight: FontWeight.bold),)),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Container(
                    height: 156,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                           InkWell(
                          onTap: (){
                            Navigator.of(context).pushReplacementNamed('/BottomScreen');
                          },
                             child:  CircleAvatar(
                               backgroundColor: Colors.black,
                               backgroundImage: AssetImage('assets/img/MALE.png'),
                               maxRadius: 50,
                             ),
                           ),

                            Padding(
                              padding:  EdgeInsets.only(top: 10),
                              child: Text('JOHN DEO', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Column(
                            children: [
                              InkWell(
                                onTap:(){
                                  Navigator.of(context).pushReplacementNamed('/GuestMap');
                                  },
                                child: CircleAvatar(
                                  backgroundColor: Colors.black,
                                  backgroundImage: AssetImage('assets/img/MALE.png'),
                                  maxRadius: 50,
                                ),
                              ),

                              Padding(
                                padding:  EdgeInsets.only(top: 10),
                                child: Text('Guest', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Container(
                    height: 200,

                    child: Center(child: Image.asset('assets/img/Selection1.PNG', fit: BoxFit.fitHeight,))),



              ],
            ),

          ],
        ),
      ),
    );
  }
}
