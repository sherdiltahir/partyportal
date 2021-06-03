import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GameSelected extends StatefulWidget {
  @override
  _GameSelectedState createState() => _GameSelectedState();
}

class _GameSelectedState extends State<GameSelected> {
  String selectedValue;
  String selectedValue1;
  List Games = [
    'Lemon Soda', 'male', 'Others'  ];
  List Games1 = [
    'Lemon Soda', 'male', 'Others'  ];
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
            Navigator.of(context).pushReplacementNamed('/Welcome');
          },
        ),
        title:Image.asset('assets/img/Create.png', width: 60, height: 60,) ,
      ),
      body:Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
         ListView(
           children: [
          Container(
            padding: EdgeInsets.all(20),
            child: DropdownButton(
              hint: Text('select items'),
              isExpanded: true,
              dropdownColor: Colors.grey.shade200,
              icon: Icon(Icons.arrow_drop_down),
              iconSize: 30,
              value: selectedValue,

                onChanged: (newvalue) {
                  setState(() {
                    selectedValue = newvalue;
                  });
                },
                items: Games.map((valueItem) {
              return DropdownMenuItem(
                value: valueItem,
                child: Text(valueItem),
              );
                 }).toList(),
                ),
          ),

             Padding(
               padding:  EdgeInsets.all(20),
               child: DropdownButton(
                 hint: Text('select items'),
                 isExpanded: true,
                 dropdownColor: Colors.grey.shade200,
                 icon: Icon(Icons.arrow_drop_down),
                 iconSize: 30,
                 value: selectedValue1,

                 onChanged: (newvalue) {
                   setState(() {
                     selectedValue1 = newvalue;
                   });
                 },
                 items: Games1.map((valueItem) {
                   return DropdownMenuItem(
                     value: valueItem,
                     child: Text(valueItem),
                   );
                 }).toList(),
               ),
             ),

             Padding(
               padding:  EdgeInsets.all(20),
               child: Text('Rate You Party', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, ),),
             ),
             Container(
                 width: 200, height: 90,
                 child: Center(child: Image.asset('assets/img/RateParty.PNG',fit: BoxFit.fill,))),
           ],
         ),
          Padding(
              padding: EdgeInsets.only(bottom: 20, right: 20),
              child: InkWell(
                  onTap: (){
                    Navigator.of(context).pushReplacementNamed('/ItemSelected');

                  },
                  child: Image.asset('assets/img/PLAY PARTY.png', width: 80, height: 80,))),
        ],
      ),
    );
  }
}
