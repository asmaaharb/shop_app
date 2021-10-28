import 'package:flutter/material.dart';
import 'package:tech_shop_app/core/const/sizes.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({ this.buttonTitle, this.fontFamily });
  final buttonTitle;

  final fontFamily;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25,right: 25,top: 20),
      child: Container(
        width: sizeFromWidth(1, context),
        height:sizeFromHeight(13, context) ,

        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(250,255, 116, 102)),
        child: Center(child: Text(buttonTitle,style: TextStyle(color: Colors.white,fontSize:25,fontFamily: fontFamily),)),


      ),
    );
  }
}