import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tech_shop_app/core/const/sizes.dart';
import 'package:tech_shop_app/widgets/normal_text.dart';

class DataCard extends StatelessWidget {
  const DataCard({ this.title});
final title;
  @override
  Widget build(BuildContext context) {
    return  Container(

      width: sizeFromWidth(1.5, context),
      height: sizeFromHeight(15.5, context),
      child: Center(child: NormalText(title: title,color: Colors.black,)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
          color:Color.fromARGB(250,253, 231, 200),

        boxShadow:[BoxShadow(color: Colors.deepPurple.withOpacity(.2),spreadRadius: 2,
              offset: Offset(0,2))]
      ),
    );
  }
}
