import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'components/app_bar.dart';
import 'components/emoji_feedback.dart';
import 'components/feedback_form.dart';
import 'components/send_button.dart';
import 'controllers/controller.dart';

class FeedBackView extends StatefulWidget {
  @override
  _FeedBackViewState createState() => _FeedBackViewState();
}

class _FeedBackViewState extends State<FeedBackView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FeedBackController(),
      child: Scaffold(
        backgroundColor: Color.fromARGB(250, 253, 231, 200),
        appBar: feedbackAppBar(),
        body: ListView(
          children: [
            EmojisFeedback(),
            FeedBackForm(),
            FeedBackConfirmButton(),
          ],
        ),
      ),
    );
  }
}
