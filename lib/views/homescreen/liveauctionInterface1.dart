import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class LiveAuctionInterface1 extends StatefulWidget {
  @override
  _LiveAuctionInterface1State createState() => _LiveAuctionInterface1State();
}

class _LiveAuctionInterface1State extends State<LiveAuctionInterface1> {
  double _lowerValue;
  double _upperValue;
  bool check1 = true;
  bool check2 = false;
  Map<MarkerId,Marker> marker = <MarkerId, Marker>{};

  fetchmarker() async{
    marker[MarkerId("rider")]=Marker(markerId: MarkerId("rider"),
        position: LatLng(30.375320,69.345116),
        icon: await BitmapDescriptor.fromAssetImage(ImageConfiguration(size: Size(40,40)),"assets/Icons/mapicon.png"));
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // ignore: deprecated_member_use
    fetchmarker();

  }
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: (){
        Navigator.pop(context);
      },
      child: Scaffold(
        body: Stack(
          children: [
            GoogleMap(
              initialCameraPosition: CameraPosition(target: LatLng(31.5204,74.3587),zoom: 14),
              mapType: MapType.terrain,
              /* scrollGesturesEnabled: true,
              rotateGesturesEnabled: true,
              zoomGesturesEnabled: true,*/
              zoomControlsEnabled: false,
              markers: Set.from(marker.values),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 90),
              child: Stack(
                children: [
                  Container(
                    alignment : Alignment.topCenter,
                    child: GestureDetector(
                      child: Padding(
                        padding: EdgeInsets.only(left: 55,right: 55),
                        child: Container(
                          width: MediaQuery.of(context).size.width*110,
                          height: 46,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    check1=true;
                                    check2=false;

                                  });
                                },
                                child: Text("View Counter",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: size.width * 0.035,
                                    color: check1 == true ? Color(0xff34C3F8) : Colors.black,
                                  ),
                                ),
                              ),
                              // SizedBox(width: 40),
                              Container(
                                height: 28.06,
                                width: 3,
                                decoration: BoxDecoration(
                                  color: Color(0xffF3F3F3),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    check1=false;
                                    check2=true;
                                  });
                                },
                                child: Container(
                                  alignment: Alignment.centerRight,
                                  child: Text("547 Views",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: size.width * 0.035,
                                      color: check2== true?Color(0xff34C3F8):Colors.black,
                                    ),
                                  ),
                                ),
                              ),
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
              padding:  EdgeInsets.only(top: 90,left: 50),
              child: Container(
                alignment: Alignment.center,
                child: GestureDetector(onTap: (){
                  Navigator.of(context).pushReplacementNamed('/LivePortalPin');
                },
                    child: Image.asset("assets/Icons/bigstar.png",height: size.width*0.35,width: size.width*0.35)),),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 120),
              child: Container(
                alignment: Alignment.topCenter,
                child: GestureDetector(onTap: (){
                  Navigator.of(context).pushReplacementNamed('/LivePortalPin');
                },    child: Image.asset("assets/Icons/bigred.png",height: size.width*0.55,width: size.width*0.55)),),
            ),

            // SLIDER Vertical




          ],
        ),

      ),
    );
  }
}
