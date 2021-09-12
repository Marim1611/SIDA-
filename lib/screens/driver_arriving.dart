import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'any_sida.dart';

import 'finding_a_ride.dart';

class DriverArriving extends StatefulWidget {
  @override
  _DriverArrivingState createState() => _DriverArrivingState();
}

class _DriverArrivingState extends State<DriverArriving> {


  final double mainHorizontalMargin = 15.0;

  @override
  Widget build(BuildContext context) {
    final screenHeight= MediaQuery.of(context).size.height;
    final screenWidth= MediaQuery.of(context).size.width;
    Size mqSize = MediaQuery.of(context).size;

    final double sizedBoxHeight =  mqSize.height * 0.016;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: screenHeight * 0.08,
              //   margin: EdgeInsets.all(15),
              padding: EdgeInsets.all(10),
              // padding: EdgeInsets.symmetric(horizontal: 10),
              // width: 0.35*screenWidth,
              // height: 0.1* screenHeight,
              decoration:BoxDecoration(
                color: Colors.white,
                border: Border.all(color:Colors.white ),
                borderRadius: BorderRadius.all(Radius.circular(60)),

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 // SizedBox(width: 0.01 * screenWidth),
                  SvgPicture.asset("assets/images/dollar.svg",width: 35,height: 35),
                 SizedBox(width: 8),
                  Text('22.20\nEGP',
                      style: TextStyle(
                          color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
           // SizedBox(width: 0.09 * screenWidth),
            Container(
              width: 0.5*screenWidth,
              height: 0.1* screenHeight,
              decoration:BoxDecoration(
                color: Colors.white,
                border: Border.all(color:Colors.white ),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Row(
                children: [
                  Container(
                      width: 0.16*screenWidth,
                      height: 0.1* screenHeight,
                      decoration:BoxDecoration(
                        color: Colors.black,
                        border: Border.all(color:Colors.black ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child:Align(
                        alignment: Alignment.center,
                        child: Text('5\nMIN',
                            style: TextStyle(
                                color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold)),
                      )),
                  SizedBox(width: 0.03 * screenWidth),
                  Text('Arrival Time',
                      style: TextStyle(
                          color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold)),
                ],
              ),
            )
          ],
        ),
        SizedBox(height:sizedBoxHeight),
        /// white card
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),

          // width: screenWidth*0.9,
          height: screenHeight*0.45,
          decoration: BoxDecoration( color:Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            //  SizedBox(height: 0.17* screenHeight),
              Container(),
             // SizedBox(height: 1.5,width:screenWidth*0.9-40, child: Container( color: Colors.grey,),),

              Divider(color: Colors.grey, thickness: 1,),
              //   SizedBox(height: 0.03* screenHeight),
              Row(
                children: [
                 // SizedBox(width: 0.02 * screenWidth),
                  SvgPicture.asset('assets/images/PickupFlag.svg',width:25,height:25),
                  SizedBox(width: 15),
                  Flexible(
                      child: Text('El-Tahrir Square, Qasr El Nil, Cairo Governorate',
                          style: TextStyle(
                              color: Colors.black, fontSize: 16.0,),)
                  )
                ],
              ),
            //  SizedBox(height: 0.03* screenHeight),
            //   SizedBox(height: 1.5,width:screenWidth*0.9-40, child: Container( color: Colors.grey,),),
            //   SizedBox(height: 0.03* screenHeight),

              Divider(thickness: 1, color: Colors.grey,),
              Row(
                children: [
                //  SizedBox(width: 0.02 * screenWidth),
                  SvgPicture.asset('assets/images/TargetFlag.svg',width: 25,height: 25,),
                  SizedBox(width: 15),
                  Flexible(
                    child: Text('Cairo - Al Wosta, Qasr Ad Dobarah, Qasr El Nile Cairo Governorate',
                        style: TextStyle(
                            color: Colors.black, fontSize: 16.0 ,fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: sizedBoxHeight),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           // SizedBox(width: 0.04* screenWidth),
            ///call button
            Container(
              width: screenWidth*0.35,
              height: screenHeight*0.08,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    HexColor("#FEBA3F"),
                    HexColor("#FED444"),
                  ],

                ),
                //   border: Border.all(color:Colors.black ),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                    onTap: ( ){},
                    child: Center(
                      child:  Row(
                        children: [
                          SizedBox(width: 0.06* screenWidth),
                          Icon( Icons.call,color: Colors.black,size: 30,),
                          SizedBox(width: 0.03* screenWidth),
                          Text('Call',
                              style: TextStyle(
                                color: Colors.black, fontSize: 22.0,)),
                        ],
                      ),
                    )),
              ),
            ),
          //  SizedBox(width: 0.04 * screenWidth),
            /// TEXT button
            Container(
              width: screenWidth*0.35,
              height: screenHeight*0.08,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    HexColor("#FEBA3F"),
                    HexColor("#FED444"),
                  ],

                ),
                //   border: Border.all(color:Colors.black ),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                    onTap: ( ){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (BuildContext context) => AnySIDA()));
                    },
                    child: Center(
                      child:  Row(
                        children: [
                          SizedBox(width: 0.06* screenWidth),
                          Icon( Icons.messenger,color: Colors.black,size: 30,),
                          SizedBox(width: 0.03* screenWidth),
                          Text('Text',
                              style: TextStyle(
                                color: Colors.black, fontSize: 22.0,)),
                        ],
                      ),
                    )),
              ),

            ),
           // SizedBox(width: 0.04 * screenWidth),
            Container(
              width: screenWidth*0.15,
              height: screenHeight*0.08,
              decoration: BoxDecoration(
                color:Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: IconButton(onPressed: ( ){
                Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => FindingRide()));
              },
                  icon:Icon( Icons.close_sharp ,color: Colors.white,size: 40,)),
            )
          ],
        ),
       // SizedBox(height: 0.04 * screenHeight),

      ],)
    ;
  }
}
