import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class LivePortalPin extends StatefulWidget {
  @override
  _LivePortalPinState createState() => _LivePortalPinState();
}

class _LivePortalPinState extends State<LivePortalPin> {
  double _lowerValue;
  double _upperValue;
  bool check1 = true;
  bool check2 = false;
  Map<MarkerId,Marker> marker = <MarkerId, Marker>{};

  fetchmarker() async{
    marker[MarkerId("rider")]=Marker(markerId: MarkerId("rider"),position: LatLng(30.375320,69.345116),icon: await BitmapDescriptor.fromAssetImage(ImageConfiguration(size: Size(40,40)),"assets/Icons/mapicon.png"),);

  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // ignore: deprecated_member_use
    fetchmarker();

  }
  @override
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
              padding: const EdgeInsets.only(top: 150,),
              child: Container(alignment: Alignment.topRight,
                child: GestureDetector(onTap: (){
                  Navigator.pop(context);
                },    child: Image.asset("assets/Icons/pinkicon.png",height: size.width*0.25,width: size.width*0.19)),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 250),
              child: Container(alignment: Alignment.centerRight,
                child: GestureDetector(onTap: (){
                  Navigator.pop(context);
                },    child: Image.asset("assets/Icons/purplegreen.png",height: size.width*0.25,width: size.width*0.19)),),
            ),
            Padding(
              padding: const EdgeInsets.only(top:220),
              child: Container(alignment: Alignment.topCenter,
                child: GestureDetector(onTap: (){
                  Navigator.pop(context);
                },    child: Image.asset("assets/Icons/pinkicon.png",height: size.width*0.25,width: size.width*0.19)),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Container(alignment: Alignment.centerLeft,
                child: GestureDetector(onTap: (){
                  Navigator.pop(context);
                },    child: Image.asset("assets/Icons/greenshadow.png",height: size.width*0.55,width: size.width*0.55)),),
            ),

            // SLIDER Vertical

            Padding(
              padding: const EdgeInsets.only(top: 220,left: 10),
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
              padding:  EdgeInsets.only(left: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 300,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                  ),
                  child: FlutterSlider(
                    rtl: true,
                    axis: Axis.vertical,
                    values: [300],
                    max: 300,
                    min: 0,
                    onDragging: (handlerIndex, lowerValue, upperValue) {
                      _lowerValue = lowerValue;
                      _upperValue = upperValue;
                      setState(() {
                      });
                    },
                    handler: FlutterSliderHandler(

                      decoration: BoxDecoration(),
                      child: Icon(Icons.circle, size: 25,
                        color: Colors.lightBlue,),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,bottom:220),
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
            Padding(
              padding: const EdgeInsets.only(top: 120),
              child: Container(alignment: Alignment.topLeft,
                child: GestureDetector(onTap: (){
                  Navigator.pop(context);
                },    child: Image.asset("assets/Icons/purplegreen.png",height: size.width*0.25,width: size.width*0.19)),),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 80),
              child: Container(alignment: Alignment.bottomLeft,
                child: GestureDetector(onTap: (){
                  Navigator.pop(context);
                },    child: Image.asset("assets/Icons/pinkicon.png",height: size.width*0.25,width: size.width*0.19)),),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30,left: 90),
              child: Container(alignment: Alignment.bottomCenter,
                child: GestureDetector(onTap: (){
                  Navigator.pop(context);
                },    child: Image.asset("assets/Icons/red2.png",height: size.width*0.25,width: size.width*0.19)),),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 14.0, right: 14, bottom: 20.0),
              child: Container(
                alignment: Alignment.bottomCenter,

              ),
            ),
          ],
        ),

      ),
    );
  }
}
