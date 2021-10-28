import 'package:flutter/cupertino.dart';
import 'package:tech_shop_app/screens/login/widgets/social_icon.dart';

class IconsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment:MainAxisAlignment.spaceAround,
        children: [
        SocialIcon(image:"assets/images/twitter.png" ,),
        SocialIcon(image:"assets/images/facebook.png" ,),
        SocialIcon(image:"assets/images/gmail.png" ,),

      ],),
    );
  }
}
