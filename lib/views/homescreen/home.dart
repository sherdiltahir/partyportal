import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _upperValue=10;
  bool check1 = true;
  bool check2 = false;
  ImageConfiguration img;
   GoogleMapController mapController;
  Map<MarkerId,Marker> marker = <MarkerId, Marker>{};
  fetchmarker() async{

  }
  @override
  Future<void> initState() async {
    // TODO: implement initState
    super.initState();
    marker[MarkerId("rider")]=Marker(markerId: MarkerId("rider"),position: LatLng(31.5204,74.3587),icon: await  BitmapDescriptor.fromAssetImage(ImageConfiguration(size: Size(20,20)),"assets/Icons/yellow.png"));
    marker[MarkerId("rider1")]=Marker(markerId: MarkerId("rider1"),position: LatLng(31.5236, 74.3514),icon: await BitmapDescriptor.fromAssetImage(ImageConfiguration(size: Size(20,20)),"assets/Icons/red.png"));
    marker[MarkerId("rider2")]=Marker(markerId: MarkerId("rider2"),position: LatLng(31.4697, 74.2728),icon: await BitmapDescriptor.fromAssetImage(ImageConfiguration(size: Size(20,20)),"assets/Icons/yellow.png"));
    marker[MarkerId("rider3")]=Marker(markerId: MarkerId("rider3"),position: LatLng(31.5102, 74.3441),icon: await BitmapDescriptor.fromAssetImage(ImageConfiguration(size: Size(20,20)),"assets/Icons/red1.png",));

    // ignore: deprecated_member_use
    //marker[MarkerId("rider")]=Marker(markerId: MarkerId("rider"),position: LatLng(30.375320,69.345116),icon: await BitmapDescriptor.fromAssetImage(ImageConfiguration(size: Size(40,40)),"assets/Icons/mapicon.png"));

  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: (){
        Navigator.pop(context);
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 80,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text(
              "Welcome",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700,
                fontSize: size.width * 0.06,
                color: Colors.black,
              ),
            ),
          ),
        ),
        body: Stack(
          children: [
            GoogleMap(
              minMaxZoomPreference: MinMaxZoomPreference(_upperValue,_upperValue),
              initialCameraPosition: CameraPosition(target: LatLng(31.5204,74.3587),zoom: _upperValue),
              mapType: MapType.terrain,
              /* scrollGesturesEnabled: true,
              rotateGesturesEnabled: true,
              zoomGesturesEnabled: true,*/
              zoomControlsEnabled: false,
              markers: Set.from(marker.values),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 120),
                    child: Container(
                      alignment : Alignment.topCenter,
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            check1=true;
                            check2=false;

                          });
                        },
                        child: Container(
                          height: 40,
                          width: 125,
                          decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          topLeft: Radius.circular(30),
                        ),
                        color: check1== true?Color(0xff34C3F8):Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                           Image.asset("assets/Icons/female.png",
                           color:  check1 == true ? Colors.white : Colors.black,),
                              SizedBox(width: 8,),
                              Text("Female",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: size.width * 0.040,
                                  color: check1 == true ? Colors.white : Colors.black,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Container(
                      alignment: Alignment.topCenter,
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            check1=false;
                            check2=true;

                          });
                        },
                        child: Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: check2==true?Color(0xff34C3F8):Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              Image.asset("assets/Icons/male.png",
                                color:  check2 == true ? Colors.white : Colors.black,),
                              SizedBox(width: 8,),
                              Text("Male",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: size.width * 0.040,
                                  color: check2 == true ? Colors.white : Colors.black,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 120,left: 10),
              child: Text(
                "1.00Mile",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: size.width * 0.035,
                  color:Colors.black,
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top:150,left: 10),
              child: Container(
                alignment: Alignment.centerLeft,
                height: 300,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white,
                ),
  child: RotatedBox(quarterTurns: 3,child: Slider(value: _upperValue,onChanged: (value){
    setState(() {
      _upperValue = value;
    });
  },max: 18.0,
  min: 10,))
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,bottom: 80),
              child: Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "0.0Miles",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: size.width * 0.035,
                    color:Colors.black,
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
