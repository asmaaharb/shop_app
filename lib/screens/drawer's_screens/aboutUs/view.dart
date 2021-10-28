import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tech_shop_app/core/const/sizes.dart';
import 'components/app_bar.dart';

class AboutUsView extends StatefulWidget {
  @override
  _AboutUsViewState createState() => _AboutUsViewState();
}

class _AboutUsViewState extends State<AboutUsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: aboutUsAppBar(),
      backgroundColor: Color.fromARGB(250, 253, 231, 200),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
                width: sizeFromWidth(1.1, context),
                child: Text(
                  "tmaaaaam ! ",
                  textAlign: TextAlign.start,
                )),
          )
        ],
      ),
    );
  }
}
