import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tech_shop_app/screens/forget_password/view.dart';
import 'package:tech_shop_app/widgets/normal_text.dart';

class ForgetPasswordHint extends StatelessWidget {
  const ForgetPasswordHint({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPassword()));
            },
              child: NormalText(
                title: "Forget password ?",
                color: Color.fromARGB(250,255, 116, 102),)),),
      ],
    );
  }
}
