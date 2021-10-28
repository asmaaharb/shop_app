import 'package:flutter/cupertino.dart';

class AppName extends StatelessWidget {
  const AppName({Key key, this.color}) : super(key: key);
final color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Center(child: Text("7.TECH",style: TextStyle(color: color,fontWeight: FontWeight.bold,fontFamily: "DancingScript",fontSize: 50,),)),
    )
    ;
  }
}
