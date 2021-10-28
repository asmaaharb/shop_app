import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

double sizeFromHeight(double fraction,BuildContext context,
    {bool removeAppBarSize = true}) {
  MediaQueryData mediaQuery = MediaQuery.of(context);
  fraction = (removeAppBarSize
      ? (mediaQuery.size.height -
      AppBar().preferredSize.height -
      mediaQuery.padding.top)
      : mediaQuery.size.height) /
      (fraction == 0 ? 1 : fraction);
  return fraction;
}

double sizeFromWidth(double fraction,BuildContext context) {
  fraction = MediaQuery.of(context).size.width / (fraction == 0 ? 1 : fraction);
  return fraction;
}


// double size(BuildContext context, double fraction){
//   final height=MediaQuery.of(context).size.height;
//   final  double ssize=(height/fraction);
//   return ssize;
//
// }
// double sizeWidth(BuildContext context, double fraction){
//   final width=MediaQuery.of(context).size.width;
//   final  double size=(width/fraction);
//   return size;
//
// }