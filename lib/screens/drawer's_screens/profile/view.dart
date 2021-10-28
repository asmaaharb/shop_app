import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import "package:tech_shop_app/screens/drawer's_screens/profile/states/states.dart";
import 'components/app_bar.dart';
import 'components/avatar.dart';
import 'components/edit_profile_button.dart';
import 'components/profile_form.dart';
import 'controller/controller.dart';

class ProfileView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EditProfileController(),
      child: Scaffold(
          appBar: profileAppBar(),
          backgroundColor: Color.fromARGB(250,253, 231, 200),
          body: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Avatar(),
              ProfileForm(),
              BlocBuilder<EditProfileController, EditProfileStates>(
                builder: (context, state) => state is EditProfileLoading
                    ? CircularProgressIndicator()
                    : InkWell(
                  child: EditProfileButton(),
                  onTap: EditProfileController.of(context).update,
                ),
              ),
            ],
          )),
    );
  }
}
