import 'package:emoji_feedback/emoji_feedback.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmojisFeedback extends StatelessWidget {
  const EmojisFeedback({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'How was your experience with us?',
            style: TextStyle(color: Colors.black),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: EmojiFeedback(
            onChange: (index) {
              print(index);
            },
          ),
        ),
      ],
    );
  }
}
