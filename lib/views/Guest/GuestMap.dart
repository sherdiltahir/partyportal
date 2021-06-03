import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class GuestMap extends StatefulWidget {
  @override
  _GuestMapState createState() => _GuestMapState();
}

class _GuestMapState extends State<GuestMap> {
  double _upperValue=10;
  bool check1 = true;
  bool check2 = false;
  ImageConfiguration img;
  GoogleMapController mapController;
  Map<MarkerId,Marker> marker = <MarkerId, Marker>{};


  buildDialogue(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return showDialog(context: context,builder: (context)=>
        Dialog(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            insetPadding: EdgeInsets.only(left: 16,right: 16),
            child:  Stack(
              alignment: Alignment.topCenter,
              overflow: Overflow.visible,
              children:
              [
                Container(
                  height: _size.height*0.50,
                  child: ListView(children: [
                    Padding(
                      padding: EdgeInsets.only(top: 40, bottom: 15),
                      child: Center(
                        child: CircleAvatar(
                          radius: 50.0,
                          backgroundImage: AssetImage('assets/images/bigoval1.png'),
                        ),
                      ),
                    ),
                    Center(
                      child: Text('Martina John', style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: _size.width * 0.07,
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
                      padding: EdgeInsets.only(top: 15, bottom: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.call, color: Colors.black,size: 30,),
                          SizedBox(width: 20,),
                          Icon(Icons.message, color: Colors.black,size: 30,),
                        ],
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 30, right: 30),
                      child: Container(
                        alignment: Alignment.center,
                          child: Text('Hi! My name is John, I’m a creative geek from San Francisco, CA', style: TextStyle(color: Colors.black54, fontSize: 15),)),
                    ),
                  ],
                  ),
                ),
              ],
            )
        )
    );
  }
  fetchmarkers() async {
    marker[MarkerId("rider")]=Marker(markerId: MarkerId("rider"),position: LatLng(31.5204,74.3587), onTap: (){buildDialogue(context);},icon: await BitmapDescriptor.fromAssetImage(ImageConfiguration(size: Size(20,20)),"assets/Icons/yellow.png"));
    marker[MarkerId("rider3")]=Marker(markerId: MarkerId("rider3"),position: LatLng(31.5102, 74.3441),icon: await BitmapDescriptor.fromAssetImage(ImageConfiguration(size: Size(20,20)),"assets/Icons/mapicon.png",));

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchmarkers();
    // ignore: deprecated_member_use
    //marker[MarkerId("rider")]=Marker(markerId: MarkerId("rider"),position: LatLng(30.375320,69.345116),icon: await BitmapDescriptor.fromAssetImage(ImageConfiguration(size: Size(40,40)),"assets/Icons/mapicon.png"));

  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: (){
        Navigator.of(context).pushReplacementNamed('/SelectLogin');

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
        body: WillPopScope(
          onWillPop: (){
            Navigator.pop(context);
          },
          child: Stack(
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
                                Text("View Counter",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: size.width * 0.035,
                                    color:  Colors.black,
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
                                Container(
                                  alignment: Alignment.centerRight,
                                  child: Text("547 Views",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: size.width * 0.035,
                                      color:Color(0xff34C3F8),
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

      ),
    );
  }
}
