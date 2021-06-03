

import 'package:flutter/material.dart';

import 'views/Choosen/AppFacesChoice.dart';
import 'views/Choosen/EventInfo.dart';
import 'views/Guest/GuestMap.dart';
import 'views/ItemSelected/ItemSelected.dart';
import 'views/Loging/Login.dart';
import 'views/Loging/OTP.dart';
import 'views/Loging/SignUp.dart';
import 'views/Loging/Welcome_page.dart';
import 'views/Notification/Notification.dart';
import 'views/Profile/Profile.dart';
import 'views/Ratting/Rating Guest.dart';
import 'views/Ratting/RatingScreen.dart';
import 'views/Selection/PartyBuild.dart';
import 'views/Selection/SelectLogin.dart';
import 'views/SelfieScreen/SelfieScreen.dart';
import 'views/Splash_Screen/SplashScreen.dart';
import 'views/bottomnavigation/bottomnavigation.dart';
import 'views/buildyourpartyScreen/GameSelcted.dart';
import 'views/buildyourpartyScreen/buildyourparty.dart';
import 'views/homescreen/liveauctionInterface.dart';
import 'views/homescreen/liveauctionInterface1.dart';
import 'views/homescreen/liveportalPin.dart';
import 'views/onBoarding/onBoarding.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;
    switch (settings.name) {
      case '/Splash':
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case '/OnBoarding':
        return MaterialPageRoute(builder: (_) => onBoarding());
      case '/Welcome':
        return MaterialPageRoute(builder: (_) => Welcome());
      case '/LogIn':
        return MaterialPageRoute(builder: (_) => LogIn());
      case '/SignUp':
        return MaterialPageRoute(builder: (_) => SignUp());
      case '/OTP':
        return MaterialPageRoute(builder: (_) => OtpScreen());
      case '/FaceChoice':
        return MaterialPageRoute(builder: (_) => FaceChoice());
      case '/SelectLogin':
        return MaterialPageRoute(builder: (_) => SelectLogin());
      case '/PartyBuild':
        return MaterialPageRoute(builder: (_) => PartyBuild());
      case '/EventInfo':
        return MaterialPageRoute(builder: (_) => EventInfo());
      case '/BuildYourParty':
        return MaterialPageRoute(builder: (_) => BuildPartyScreen());
      case '/BottomScreen':
        return MaterialPageRoute(builder: (_) => BottomScreen());
      case '/OtpScreen':
        return MaterialPageRoute(builder: (_) => OtpScreen());
      case '/Profile':
        return MaterialPageRoute(builder: (_) => Profile());
      case '/Selfie':
        return MaterialPageRoute(builder: (_) => Selfie());
      case '/RattingScreen':
        return MaterialPageRoute(builder: (_) => RattingScreen());
      case '/RattingGuest':
        return MaterialPageRoute(builder: (_) => RattingGuest());
      case '/ItemSelected':
        return MaterialPageRoute(builder: (_) => ItemSelected());
      case '/GameSelected':
        return MaterialPageRoute(builder: (_) => GameSelected());
      case '/LiveAuctionInterface':
        return MaterialPageRoute(builder: (_) => LiveAuctionInterface());
      case '/LiveAuctionInterface1':
        return MaterialPageRoute(builder: (_) => LiveAuctionInterface1());
      case '/LivePortalPin':
        return MaterialPageRoute(builder: (_) => LivePortalPin());
      case '/GuestMap':
        return MaterialPageRoute(builder: (_) => GuestMap());
      case '/NotificationScreen':
        return MaterialPageRoute(builder: (_) => NotificationScreen());
      default:
      // If there is no such named route in the switch statement, e.g. /third
        return MaterialPageRoute(builder: (_) => Scaffold(body: SafeArea(child: Text('Route Error'))));
    }
  }
}
