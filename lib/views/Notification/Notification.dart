import 'package:flutter/material.dart';


class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 80,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_sharp, color: Colors.black,),
          onPressed: (){
            Navigator.of(context).pushReplacementNamed('/Profile');

          },
        ),
        title:Text('Notification', style: TextStyle(fontSize: 25, color: Colors.black),) ,
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 14,right: 14,top: 14,),
        shrinkWrap: true,
        children: [

          Padding(
            padding:  EdgeInsets.only(bottom: 30),
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
              height: 76,

              child: Row(

                children: [
                  Expanded(flex: 2,child: Image.asset("assets/Icons/Create.png",height: 42,width: 42,)),
                  Expanded(
                    flex: 9,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Row(
                            children: [
                              Expanded(

                                child: RichText(text: TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(text: "Order is ",style: TextStyle(color:Colors.black, fontSize: size.width*0.037,fontWeight: FontWeight.w600)),
                                      TextSpan(text: "Ready",style: TextStyle(color:Color(0xFF37bc6e), fontSize: size.width*0.037,fontWeight: FontWeight.w600))
                                    ]
                                ),),
                              ),
                              Expanded(child: Opacity(opacity: 0.54,child: Text("15 Jun 2020 12:00 PM",textAlign: TextAlign.end,style: TextStyle(fontSize:size.width*0.028,color:Colors.black),)))

                            ],
                          ),
                        ),
                        SizedBox(height: 8,),
                        Container(width: MediaQuery.of(context).size.width/1.9,child: Text("Your order is ready. Go to Laundry 8 to pickup the order.",style: TextStyle(color:Colors.black,fontSize:size.width*0.030,fontWeight: FontWeight.w400),))

                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white,),
            height: 76,

            child: Row(
              children: [
                Expanded(flex: 2,child: Image.asset("assets/Icons/Create.png",height: 42,width: 42,)),
                Expanded(
                  flex: 9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right:10.0),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 4,
                              child: RichText(text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(text: "Order is ",style: TextStyle(color:Colors.black,fontSize: size.width*0.037,fontWeight: FontWeight.w600)),
                                    TextSpan(text: "Delivered",style: TextStyle(color:Color(0xFF6148f6),fontSize: size.width*0.037,fontWeight: FontWeight.w600))
                                  ]
                              ),),
                            ),
                            Expanded(flex: 4,child: Opacity(opacity: 0.54,child: Text("15 Jun 2020 12:00 PM",textAlign: TextAlign.end,style: TextStyle(fontSize:size.width*0.028,color:Colors.black),)))

                          ],
                        ),
                      ),
                      SizedBox(height: 8,),
                      Container(width: MediaQuery.of(context).size.width/1.8,child: Text(
                        "Your order in ready now and it’s require your action",style: TextStyle(color:Colors.black,fontSize:size.width*0.030,fontWeight: FontWeight.w400),))
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
