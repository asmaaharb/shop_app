import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class Rating extends StatelessWidget {
  const Rating({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: RatingBarIndicator(
        rating: 3.5,
        itemBuilder: (context, index) => Icon(
          Icons.star,
          color: Colors.amber,
        ),
        itemCount: 5,
        itemSize: 20.0,
        unratedColor: Colors.amber.withAlpha(50),
        direction:  Axis.horizontal,
      ),
    );
  }
}
