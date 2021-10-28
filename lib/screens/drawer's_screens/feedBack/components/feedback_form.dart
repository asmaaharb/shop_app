import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:tech_shop_app/screens/drawer's_screens/feedBack/controllers/controller.dart";

class FeedBackForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = FeedBackController.of(context);
    return Form(
      key: controller.formKey,
      child: Padding(
        padding: const EdgeInsets.only(top: 10,left: 20,right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment:CrossAxisAlignment.start ,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Contact us if you have any complaints', style: TextStyle(color: Colors.black),),
            ),
            TextFormField(
              validator: (value) {
                if (value.isEmpty)
                  return 'Empty field!';

                else
                  return null;
              },
              controller: controller.sFNameController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 2.0, 2.0),

                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)),
                hintText: "Name",
              ),
            ),
            SizedBox(height: 5,),
            TextFormField(
              validator: (value) {
                if (value.isEmpty)
                  return 'Empty field!';
                else
                  return null;
              },
              controller: controller.sLNameController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 2.0, 2.0),

                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)),
                hintText: "phone",
              ),
            ),
            SizedBox(height: 5,),

            TextFormField(
              validator: (value) {
                if (value.isEmpty)
                  return 'Empty field!';
                else if (!value.contains('@'))
                  return 'missing @!';
                else
                  return null;
              },
              controller: controller.sEmailController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 2.0, 2.0),

                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)),
                hintText: "Email",
              ),
            ),
            SizedBox(height: 5,),

            TextFormField(
              validator: (value) {
                if (value.isEmpty)
                  return 'Empty field!';
                else
                  return null;
              },
              controller: controller.sPasswordController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 40.0, 40.0),

                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)),

                hintText: "Write Your Message",

              ),
            ),
          ],
        ),
      ),
    );
  }
}
