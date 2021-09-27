import 'dart:convert';
import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sida_app/helpers/requesthelper.dart';
import 'package:sida_app/models/address.dart';
import 'package:sida_app/screens/home_screen.dart';
import 'package:sida_app/shared/components/constants.dart';
import 'package:sida_app/shared/data_handler/data_provider.dart';
import '../firebase_db.dart';
import '../models/direction_details.dart';
import 'package:sida_app/models/users.dart';
import 'package:sida_app/shared/data_handler/map_provider.dart';
import 'package:http/http.dart' as http;
class HelperMethods{

  static void getCurrentOnlineUserInfo() async
  {

    currentUser = FirebaseAuth.instance.currentUser;
    String userId = FirebaseAuth.instance.currentUser.uid;
    print("WEAAM" + FirebaseAuth.instance.currentUser.uid);
    DatabaseReference reference = FirebaseDatabase.instance.reference().child("Users").child(userId);

    reference.once().then((DataSnapshot dataSnapShot)
    {
      if(dataSnapShot.value != null)
      {
       // currentUser = Users.fromSnapShot(dataSnapShot);
        currentUserInfo = Users.fromSnapShot(dataSnapShot);
      }
      else{

        print("data snapshot = null");

      }
    });

    // currentUser = FirebaseAuth.instance.currentUser;
    // String userId = (await FirebaseAuth.instance.currentUser).uid;
    //
    // DatabaseReference userRef = FirebaseDatabase.instance.reference().child('Users/$userId');
    // userRef.once().then((DataSnapshot dataSnapShot)
    // {
    //   if(dataSnapShot.value != null)
    //   {
    //     currentUserInfo = Users.fromSnapShot(dataSnapShot);
    //     print('my name is ${currentUserInfo.name}');
    //     print('my name is ${currentUserInfo.phone}');
    //     print('my name is ${currentUserInfo.id}');
    //
    //   }
    //   else
    //     {
    //       print("data snapshot = null");
    //     }
    // });
  }



  static void formChoosingPickUpToHomeScreen({
    context,
    String placeId,
    String placeName,
    double longitude,
    double latitude,

  }) async{


    // &fields=name,rating,formatted_phone_number
    // String detailUrl = "https://maps.googleapis.com/maps/api/place/details/json?placeId=$placeId&key=$MAP_API_KEY";
    //
    // var response = await RequestHelper.getRequest(detailUrl);
    // if(response != "failed")
    // {
      // if(response["status"] == "OK")

        Address dropOffAddress = Address(
          placeName: placeName,
          latitude: latitude,
          longitude: longitude,
          placeId: placeId,
        );

        Provider.of<MapProvider>(context, listen: false).updateDropOffLocationAddress(dropOffAddress);


        print("your drop off location: " + dropOffAddress.placeName);
        //  Provider.of<MapProvider>(context, listen: false).updateAutoCompletePredictionsList([]);
        Provider.of<MapProvider>(context, listen: false).getDirectionDetails();

        //Navigator.pop(context, "getDirections");

        Provider.of<DataProvider>(context, listen: false).updateHomeStatus(HomeStatus.SELECT_AND_CONFIRM_RIDE)  ;
        ///TODO:change to user id in homescreen()
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
          builder: (context,) => HomeScreen(homeStatus: HomeStatus.SELECT_AND_CONFIRM_RIDE,),), (route) => false);


      //}
    //   else
    //   {
    //     print("API ERROR");
    //   }
    //
    //
    // }
    // else
    // {
    //   print("Failed to load place address details ");
    // }

  }


  static int calculateFares(DirectionDetails directionDetails ,String carType,String distance,String time)
  {

    double timeTraveledFare=0.0;
    double distancTraveledFare=0.0;
    double totalFareAmount;
    print("+____________________________");
    print(time);
    print(distance);
    print( directionDetails.durationValue );
    double tripTime= double.parse(time);
    double tripDistance= double.parse(distance);
    if (  carType == "Any SIDA")
      {
         if( directionDetails.durationValue > tripTime )
           {
             timeTraveledFare = ((directionDetails.durationValue - tripTime) / 60) * 0.36;
           }

         distancTraveledFare = (tripDistance/ 1000) * 2.61;
         totalFareAmount = timeTraveledFare + distancTraveledFare;
        if(totalFareAmount < 11)
          totalFareAmount=11;
      }
    else if (  carType == "SIDA Plus")
      {
        if( directionDetails.durationValue > tripTime )
        {
          timeTraveledFare = ((directionDetails.durationValue - tripTime) / 60) * 0.4;
        }
        distancTraveledFare = (tripDistance/ 1000) * 2.80;
        totalFareAmount = timeTraveledFare + distancTraveledFare;
        if(totalFareAmount < 12)
          totalFareAmount=12;
      }
      double result = (totalFareAmount.truncate()) * 1.0;
      return result.truncate();

  }

  //static DatabaseReference rideRequestRef;


  //todo;

  //saveRideRequest
  // static void createRideRequest({context, String carType}){
  //
  //   rideRequestRef = FirebaseDatabase.instance.reference().child("rideRequests").push();
  // //  rideRequestRef = FirebaseDatabase.instance.reference().child("rideRequests").child(FirebaseAuth.instance.currentUser.uid).push();
  //
  //   var pickUp = Provider.of<MapProvider>(context, listen: false).userPickUpLocation;
  //   var dropOff = Provider.of<MapProvider>(context, listen: false).userDropOffLocation;
  //
  //   Map pickUpLocMap =
  //   {
  //     "latitude": pickUp.latitude.toString(),
  //     "longitude": pickUp.longitude.toString(),
  //   };
  //
  //   Map dropOffLocMap =
  //   {
  //     "latitude": dropOff.latitude.toString(),
  //     "longitude": dropOff.longitude.toString(),
  //   };
  //
  //   Map rideInfoMap =
  //   {
  //     "created_at": DateTime.now().toString(),
  //     //TODO:
  //     "rider_name": currentUserInfo.name ?? 'error',
  //    "rider_phone": currentUserInfo.Phonenumber ?? 'not available',
  //     "pickup_address": pickUp.placeName,
  //     "dropoff_address": dropOff.placeName,
  //     "pickup_location": pickUpLocMap,
  //     "dropoff_location": dropOffLocMap,
  //     "payment_method": "cash",
  //     "driver_id": "waiting",
  //      "ride_type": carType,
  //   };
  //
  //   //FirebaseDatabase.instance.reference().child("rideRequests").child(FirebaseAuth.instance.currentUser.uid).set(rideInfoMap);
  //
  //    rideRequestRef.set(rideInfoMap);
  //
  //   rideStreamSubscription = rideRequestRef.onValue.listen((event) async{
  //
  //   }
  //
  //
  // }




  static double generateRandomNumber(int max)
  {
    var randomGenerator = Random();
    int randInt = randomGenerator.nextInt(max);
    
    return randInt.toDouble();
  }


  static sendNotificationToDriver(String token, context, String ride_request_id) async
  {

    print('weaam : sendNotificationToDriver()');
    var destionation = Provider.of<MapProvider>(context, listen: false).userDropOffLocation;
    Map<String, String> headerMap =
    {
      'Content-Type': 'application/json',
      'Authorization': serverToken,
    };

    Map notificationMap =
    {
      //TODO: we can change title
      'body': 'DropOff Address, ${destionation.placeName}',
      'title': 'New Ride Request'
    };

    Map dataMap =
    {
      'click_action': 'FLUTTER_NOTIFICATION_CLICK',
      'id': '1',
      'status': 'done',
      'ride_request_id': ride_request_id,
    };

    Map sendNotificationMap =
    {
      "notification": notificationMap,
      "data": dataMap,
      "priority": "high",
      "to": token,
    };

    var res = await http.post(
      'https://fcm.googleapis.com/fcm/send',
      headers: headerMap,
      body: jsonEncode(sendNotificationMap),
    );
  }


}