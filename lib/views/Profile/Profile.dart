import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(

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
        title:Image.asset('assets/img/Create.png', width: 60, height: 60,) ,
      ),
      body: WillPopScope(
        onWillPop: (){
          Navigator.of(context).pushReplacementNamed('/Profile');

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
                 padding: EdgeInsets.only(top: 30, left: 40, bottom: 20),
                 child: Text('Profile',  style: GoogleFonts.poppins(
                   fontWeight: FontWeight.w700,
                   fontSize: size.width * 0.06,
                   color: Colors.black,
                 ),),
               ),
                  Center(
                    child: CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage('assets/img/MALE.png'),
                    ),
                  ),
                  Center(
                    child: Text('Martina John', style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: size.width * 0.05,
                      color: Colors.black,
                    ),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add_location, color: Colors.blue,size: 30,),
                      Text('San Francisco, CA'),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 40, left: 20),
                    child: InkWell(
                      onTap: (){
                        Navigator.of(context).pushReplacementNamed('/NotificationScreen');
                      },
                      child: ListTile(
                        leading: Icon(Icons.notifications, size: 25,),
                        title: Text('Notification', style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),),

                      ),
                    ),

                  ),
                  Padding(
                    padding: EdgeInsets.only( left: 20),
                    child: ListTile(
                      leading: Icon(Icons.settings, size: 25,),
                      title: Text('Profile Setting', style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),),

                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only( left: 20),
                    child: InkWell(
                      onTap: (){
                        Navigator.of(context).pushReplacementNamed('/RattingScreen');
                      },
                      child: ListTile(
                        leading: Icon(Icons.history, size: 25,),
                        title: Text('History', style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),),

                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only( left: 20),
                    child: ListTile(
                      leading: Icon(Icons.logout,color: Colors.red, size: 25,),
                      title: Text('Logout', style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),),

                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
