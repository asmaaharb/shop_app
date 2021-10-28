import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tech_shop_app/screens/create_account/controllers/controller.dart';

class SignUpForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = SignUpController.of(context);
    return Form(
      key: controller.formKey,
      child: Padding(
        padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextFormField(
              validator: (value) {
                if (value.isEmpty)
                  return 'Empty field!';

                else
                  return null;
              },
              controller: controller.sNameController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),

                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)),
                hintText: " Name",
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              validator: (value) {
                if (value.isEmpty)
                  return 'Empty field!';
                else
                  return null;
              },
              controller: controller.sPhoneController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),

                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)),
                hintText: "phone",
              ),
            ),
            SizedBox(height: 10,),

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
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),

                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)),
                hintText: "Email",
              ),
            ),
            SizedBox(height: 10,),

            TextFormField(
              validator: (value) {
                if (value.isEmpty)
                  return 'Empty field!';
                else if (value.length < 4)
                  return 'Length';
                else
                  return null;
              },
              controller: controller.sPasswordController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),

                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)),
                helperText: "your password must be at least 6 characters",

                hintText: "Choose password",
                // suffixIcon: IconButton(
                //   onPressed: () => updateStatus(),
                //   icon: Icon(
                //       _isVisible ? Icons.visibility : Icons.visibility_off),
                // ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
