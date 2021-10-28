import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tech_shop_app/core/const/sizes.dart';
import 'package:tech_shop_app/screens/login/view.dart';
import 'package:tech_shop_app/widgets/button.dart';
import 'onboarding_card_dots.dart';

class OnBoardingCard extends StatelessWidget {
  const OnBoardingCard(
      {this.image, this.title, this.description, this.color, this.color1, this.color2, this.color3});
  final color;
  final color1;
  final color2;
  final color3;
  final image;
  final title;
  final description;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Container(
              width: sizeFromWidth(1, context),
              height: sizeFromHeight(2, context),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.contain)),
            ),
          ),
          Text(
            title,
            style: TextStyle(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontFamily: 'DancingScript'),
          ),
          SizedBox(
            height: 50,
          ),
          Text(description,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'DancingScript',
                  fontWeight: FontWeight.bold)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginView()));
                  },
                  child: CustomButton(
                    buttonTitle: "Get Started",
                    fontFamily: 'DancingScript',
                  )),
              Center(
                child: Container(
                  width: 100,
                  height: 50,
                  child: Row(
                    children: [
                      OnBoardingDots(color: color,),
                      OnBoardingDots(color: color1,),
                      OnBoardingDots(color: color2,),
                      OnBoardingDots(color: color3,),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
