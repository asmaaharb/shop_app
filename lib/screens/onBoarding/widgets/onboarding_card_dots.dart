import 'package:flutter/cupertino.dart';

class OnBoardingDots extends StatelessWidget {
  const OnBoardingDots({Key key, this.color}) : super(key: key);
final color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      width: 15,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: color),
    );
  }
}
