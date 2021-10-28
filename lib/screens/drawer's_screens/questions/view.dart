import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import "package:tech_shop_app/screens/drawer's_screens/questions/states/controller.dart";

import 'components/app_bar.dart';
import 'components/ques_tile.dart';
import 'controllers/faqs_controller.dart';

class QuestionsView extends StatefulWidget {
  @override
  _QuestionsViewState createState() => _QuestionsViewState();
}

class _QuestionsViewState extends State<QuestionsView> {
  final controller = FAQSController()..getData();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => controller,
        child: Scaffold(
          appBar: questionsAppBar(),
          backgroundColor: Color.fromARGB(250, 253, 231, 200),
          body: BlocBuilder(
            bloc: controller,
            builder: (context, state) => state is FAQSLoading ? Center(child: CircularProgressIndicator(color: Colors.white,)) :  ListView.builder(
              itemCount: controller.faqsModel.data.data.length,
              itemBuilder: (context, index) => QuestionTile(
                  controller: controller,
                  title: controller.faqsModel.data.data[index].question,
                  body: controller.faqsModel.data.data[index].answer),
            ),
          ),
        ));
  }
}
