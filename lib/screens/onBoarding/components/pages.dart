import 'package:flutter/material.dart';
import 'package:tech_shop_app/screens/onBoarding/widgets/onboarding_card.dart';

final pages = [
  OnBoardingCard(
    image: 'assets/images/1.png',
    title: 'With 7.TECH',
    description: 'enjoy shopping!',
    color: Color.fromARGB(250, 255, 116, 102),
    color1: Color.fromARGB(250, 253, 231, 200),
    color2: Color.fromARGB(250, 253, 231, 200),
    color3: Color.fromARGB(250, 253, 231, 200),
  ),
  OnBoardingCard(
    image: 'assets/images/2.png',
    title: 'ORDER ',
    description: 'Order what you want when you want!',
    color1: Color.fromARGB(250, 255, 116, 102),
    color: Color.fromARGB(250, 253, 231, 200),
    color2: Color.fromARGB(250, 253, 231, 200),
    color3: Color.fromARGB(250, 253, 231, 200),
  ),
  OnBoardingCard(
    image: 'assets/images/3.png',
    title: "PAY",
    description: "We provide the easiest payment methods!",
    color2: Color.fromARGB(250, 255, 116, 102),
    color1: Color.fromARGB(250, 253, 231, 200),
    color: Color.fromARGB(250, 253, 231, 200),
    color3: Color.fromARGB(250, 253, 231, 200),
  ),
  OnBoardingCard(
    image: 'assets/images/4.png',
    description: "We deliver orders in the fastest and safest way!",
    title: "DELIVER",
    color3: Color.fromARGB(250, 255, 116, 102),
    color1: Color.fromARGB(250, 253, 231, 200),
    color2: Color.fromARGB(250, 253, 231, 200),
    color: Color.fromARGB(250, 253, 231, 200),
  ),
];
