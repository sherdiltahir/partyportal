import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class EventInfo extends StatefulWidget {
  @override
  _EventInfoState createState() => _EventInfoState();
}

class _EventInfoState extends State<EventInfo> {

  Widget image_carousel=new Container(
    // decoration: BoxDecoration(
    //   borderRadius: BorderRadius.circular(10.0)
    // ),
    height: 200.0,
    child: Carousel(
      boxFit: BoxFit.cover,
      autoplayDuration: Duration(seconds: 2),
      images: [
        AssetImage('assets/img/EventBidding.png'),
        AssetImage('assets/img/EventBidding.png'),
        AssetImage('assets/img/EventBidding.png'),
        AssetImage('assets/img/EventBidding.png'),
        AssetImage('assets/img/EventBidding.png'),
        AssetImage('assets/img/EventBidding.png'),
      ],
      autoplay: true,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
      dotSize: 5.0,
      dotBgColor: Colors.transparent,
      indicatorBgPadding: 4.0,
      dotColor: Colors.blue,
    ),
  );
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
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_sharp, color: Colors.black,),
            onPressed: (){
              Navigator.of(context).pushReplacementNamed('/Welcome');
            },
          ),
          // title:Image.asset('assets/img/Create.png', width: 60, height: 60,) ,
        ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 5, left: 20, right: 20 , bottom: 30),
              child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text('Event Information', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),)),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 20, right: 20),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow:[
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2), //color of shadow
                        spreadRadius: 5, //spread radius
                        blurRadius: 7, // blur radius
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: image_carousel
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 20),
              child: Container(
                height: 100,

                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Center(
                        child: Container(
                          height: 80,
                          width: 110,
                          decoration: BoxDecoration(
                      color: Colors.white,
                            boxShadow:[
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2), //color of shadow
                                spreadRadius: 2, //spread radius
                                blurRadius: 2, // blur radius
                                offset: Offset(0, 2), // changes position of shadow
                                //first paramerter of offset is left-right
                                //second parameter is top to down
                              ),
                              //you can set more BoxShadow() here
                            ],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image.asset('assets/img/EventBidding.png' , fit: BoxFit.fitWidth,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Center(
                        child: Container(
                          height: 80,
                          width: 110,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow:[
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2), //color of shadow
                                spreadRadius: 2, //spread radius
                                blurRadius: 2, // blur radius
                                offset: Offset(0, 2), // changes position of shadow
                                //first paramerter of offset is left-right
                                //second parameter is top to down
                              ),
                              //you can set more BoxShadow() here
                            ],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image.asset('assets/img/EventBidding.png' , fit: BoxFit.fitWidth,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Center(
                        child: Container(
                          height: 80,
                          width: 110,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow:[
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2), //color of shadow
                                spreadRadius: 2, //spread radius
                                blurRadius: 2, // blur radius
                                offset: Offset(0, 2), // changes position of shadow
                                //first paramerter of offset is left-right
                                //second parameter is top to down
                              ),
                              //you can set more BoxShadow() here
                            ],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image.asset('assets/img/EventBidding.png' , fit: BoxFit.fitWidth,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Center(
                        child: Container(
                          height: 80,
                          width: 110,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow:[
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2), //color of shadow
                                spreadRadius: 2, //spread radius
                                blurRadius: 2, // blur radius
                                offset: Offset(0, 2), // changes position of shadow
                                //first paramerter of offset is left-right
                                //second parameter is top to down
                              ),
                              //you can set more BoxShadow() here
                            ],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image.asset('assets/img/EventBidding.png' , fit: BoxFit.fitWidth,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Center(
                        child: Container(
                          height: 80,
                          width: 110,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow:[
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2), //color of shadow
                                spreadRadius: 2, //spread radius
                                blurRadius: 2, // blur radius
                                offset: Offset(0, 2), // changes position of shadow
                                //first paramerter of offset is left-right
                                //second parameter is top to down
                              ),
                              //you can set more BoxShadow() here
                            ],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image.asset('assets/img/EventBidding.png' , fit: BoxFit.fitWidth,),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Text('Detail', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, ),),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Text('In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a', style: TextStyle(fontSize: 10, color: Colors.black54),),
            ),

            Padding(
              padding: EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow:[
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2), //color of shadow
                      spreadRadius: 2, //spread radius
                      blurRadius: 2, // blur radius
                      offset: Offset(0, 2), // changes position of shadow
                      //first paramerter of offset is left-right
                      //second parameter is top to down
                    ),
                    //you can set more BoxShadow() here
                  ],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Duration', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                      Text('11:45:00 PM' ,  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black54),),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow:[
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2), //color of shadow
                      spreadRadius: 2, //spread radius
                      blurRadius: 2, // blur radius
                      offset: Offset(0, 2), // changes position of shadow
                      //first paramerter of offset is left-right
                      //second parameter is top to down
                    ),
                    //you can set more BoxShadow() here
                  ],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Location', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                      Text('America' ,  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black54),),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow:[
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2), //color of shadow
                      spreadRadius: 2, //spread radius
                      blurRadius: 2, // blur radius
                      offset: Offset(0, 2), // changes position of shadow
                      //first paramerter of offset is left-right
                      //second parameter is top to down
                    ),
                    //you can set more BoxShadow() here
                  ],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('States', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                      Text('wasigton' ,  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black54),),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow:[
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2), //color of shadow
                      spreadRadius: 2, //spread radius
                      blurRadius: 2, // blur radius
                      offset: Offset(0, 2), // changes position of shadow
                      //first paramerter of offset is left-right
                      //second parameter is top to down
                    ),
                    //you can set more BoxShadow() here
                  ],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Drink', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                      Text('All' ,  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black54),),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow:[
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2), //color of shadow
                      spreadRadius: 2, //spread radius
                      blurRadius: 2, // blur radius
                      offset: Offset(0, 2), // changes position of shadow
                      //first paramerter of offset is left-right
                      //second parameter is top to down
                    ),
                    //you can set more BoxShadow() here
                  ],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Members', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                      Text('54' ,  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black54),),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
