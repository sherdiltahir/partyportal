import 'package:flutter/material.dart';

class OnboardingData {
  String title;
  String text;
  String image_url;

  OnboardingData({this.title, this.text, this.image_url});
}


List<OnboardingData> onboardingall() {
  List _myitems = <OnboardingData>[
    /*OnboardingData(
      title: "Event World",
      text:
      "Lorem Ipsum Dolor Sit Amet, Consectetur Adipisicing Elit, Sed Do Eiusmod.Lorem Ipsum Dolor Sit Amet, Consectetur Adipisicing Elit, Sed Do Eiusmod.",
      image_url: 'assets/img/EventWorld.png',
    ),*/
    OnboardingData(
      title: "Event Manegment",
      text: "Lorem Ipsum Dolor Sit Amet, Consectetur Adipisicing Elit, Sed Do Eiusmod.Lorem Ipsum Dolor Sit Amet, Consectetur Adipisicing Elit, Sed Do Eiusmod.",
      image_url: 'assets/img/EventManag.png',
    ),
    OnboardingData(
      title: "Biding For Event",
      text:
      "Lorem Ipsum Dolor Sit Amet, Consectetur Adipisicing Elit, Sed Do Eiusmod.Lorem Ipsum Dolor Sit Amet, Consectetur Adipisicing Elit, Sed Do Eiusmod.",
      image_url: 'assets/img/EventBidding.png',
    ),
    OnboardingData(
      title: "Secure Locations",
      text:
      "Lorem Ipsum Dolor Sit Amet, Consectetur Adipisicing Elit, Sed Do Eiusmod.Lorem Ipsum Dolor Sit Amet, Consectetur Adipisicing Elit, Sed Do Eiusmod.",
      image_url: 'assets/img/EventLocation.png',
    ),
  ];
  return _myitems;
}

