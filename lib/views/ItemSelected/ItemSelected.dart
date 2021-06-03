import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ItemSelected extends StatefulWidget {
  @override
  _ItemSelectedState createState() => _ItemSelectedState();
}

class _ItemSelectedState extends State<ItemSelected> {
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
            Navigator.pop(context);
          },
        ),
        title:Image.asset('assets/img/Create.png', width: 60, height: 60,),
      ),
      body:Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
         ListView(
           children: [
           Center(
             child: Padding(
               padding: EdgeInsets.only(top: 120),
               child: Container(
                 width: 300,
                   height: 300,
                   child: Image.asset('assets/img/SelectedItem.PNG',fit: BoxFit.fill,)),
             ),
           ),
           ],
         ),
          Padding(
              padding: EdgeInsets.only(bottom: 20,),
              child: InkWell(
                  onTap: (){
                    Navigator.of(context).pushReplacementNamed('/BottomScreen');
                  },
                  child: Image.asset('assets/img/PLAY PARTY.png', width: 100, height: 100,))),

        ],
      ),
    );
  }
}
