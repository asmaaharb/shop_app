import 'package:flutter/cupertino.dart';
import 'package:tech_shop_app/core/const/sizes.dart';

class SocialIcon extends StatelessWidget {
  const SocialIcon({this.image});
  final image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: sizeFromWidth(12, context),
      height: sizeFromHeight(12, context),
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(image), fit: BoxFit.contain)),
    );
  }
}
