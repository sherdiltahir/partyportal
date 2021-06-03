import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), ()=>Navigator.of(context).pushReplacementNamed('/Welcome'));
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        fit:StackFit.expand,
        children: [


          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                   Image.asset('assets/images/Party-Portal-Animation.gif',height: 150,width: 150,),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text('Party Portal', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 35, letterSpacing: 2,),),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
