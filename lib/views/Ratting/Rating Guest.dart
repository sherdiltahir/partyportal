import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class RattingGuest extends StatefulWidget {
  @override
  _RattingGuestState createState() => _RattingGuestState();
}

class _RattingGuestState extends State<RattingGuest> {
  var rating = 3.0;
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
            Navigator.of(context).pushReplacementNamed('/RattingScreen');
          },
        ),
        title:Image.asset('assets/img/Create.png', width: 60, height: 60,) ,
      ),
      body:Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                    alignment: Alignment.center,
                    child: Text('Ratting Your Guest', style: TextStyle(fontWeight:FontWeight.w500, fontSize: 20 ),)),
              ),
              Image.asset('assets/img/RatingGuest.PNG', width: 230 , height: 230,),
              Padding(
                padding: EdgeInsets.only(left: 20, bottom: 30),
                child: Text('Rating:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ),

              Center(
                child: SmoothStarRating(
                  rating: rating,
                  isReadOnly: false,
                  size: 50,
                  filledIconData: Icons.star,
                  halfFilledIconData: Icons.star_half,
                  defaultIconData: Icons.star_border,
                  starCount: 5,
                  allowHalfRating: true,
                  spacing: 2.0,
                  onRated: (value) {
                    print("rating value -> $value");
                    // print("rating value dd -> ${value.truncate()}");
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 20),
                child: Text('Comments', style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(left:16 ,right:16 ,top:15 ),
                child: Container(
                  width: MediaQuery.of(context).size.width-32,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Color(0xffC0C4D3).withOpacity(0.38)),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFF7F5FF).withOpacity(0.38),
                        // blurRadius: 0.5,
                        spreadRadius: 1,
                      ),
                    ],
                  ),

                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Drop a line',
                        //  border: OutlineInputBorder(borderRadius: BorderRadius.circular(13),),
                      ),
                      maxLines: 3,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
              padding: EdgeInsets.only(bottom: 20,),
              child: Image.asset('assets/img/PLAY PARTY.png', width: 70, height: 70,)),

        ],
      ),
    );
  }
}
