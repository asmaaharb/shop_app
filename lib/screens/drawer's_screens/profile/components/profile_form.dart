import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tech_shop_app/core/const/sizes.dart';
import "package:tech_shop_app/screens/drawer's_screens/profile/controller/controller.dart";
import 'package:tech_shop_app/widgets/custom_text_form_field.dart';


class ProfileForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = EditProfileController.of(context);
    return Column(
      children: [
        Container(

          width: sizeFromWidth(1.3, context),
          height: sizeFromHeight(9.5, context),
          child: CustomTextFormField(
            labelText: 'Name',
            prefix: Icons.person_outline,
            controller: controller.nameController,
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color:Color.fromARGB(250,253, 231, 200),

              boxShadow:[BoxShadow(color: Colors.deepPurple.withOpacity(.2),spreadRadius: 2,
                  offset: Offset(0,2))]
          ),
        ) ,
        Padding(
          padding: const EdgeInsets.only(top: 20.0,bottom: 20),
          child: Container(

            width: sizeFromWidth(1.3, context),
            height: sizeFromHeight(9.5, context),
            child:  CustomTextFormField(
              labelText: 'Phone',
              prefix: Icons.phone,
              controller: controller.phoneController,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color:Color.fromARGB(250,253, 231, 200),

                boxShadow:[BoxShadow(color: Colors.deepPurple.withOpacity(.2),spreadRadius: 2,
                    offset: Offset(0,2))]
            ),
          ),
        ) ,
        Container(

          width: sizeFromWidth(1.3, context),
          height: sizeFromHeight(9.5, context),
          child: CustomTextFormField(
            controller: controller.emailController,
            prefix: Icons.email_outlined,
            labelText: 'Email',
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color:Color.fromARGB(250,253, 231, 200),

              boxShadow:[BoxShadow(color: Colors.deepPurple.withOpacity(.2),spreadRadius: 2,
                  offset: Offset(0,2))]
          ),
        ) ,



      ],
    );
  }
}
