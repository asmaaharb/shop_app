import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/pages.dart';
import 'package:gooey_carousel/gooey_carrousel.dart';

class OnBoardingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GooeyCarousel(
          children: pages
      ),
    );
  }
}
