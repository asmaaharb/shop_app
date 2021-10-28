import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_shop_app/core/const/sizes.dart';
import "package:tech_shop_app/screens/drawer's_screens/profile/controller/controller.dart";
class Avatar extends StatelessWidget {
  const Avatar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = EditProfileController.of(context);
    return BlocBuilder(
      bloc: cubit,
      builder: (context, state) => Container(
        width: sizeFromWidth(5, context),
        height: sizeFromHeight(3, context),
        child: Column(
          children: [
            Container(
              width: sizeFromWidth(3, context),
              height: sizeFromHeight(5, context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: cubit.file == null
                        ?AssetImage("assets/images/profile.png")
                    //NetworkImage(SharedHelper.getImage)
                        : FileImage(cubit.file),
                  ),
                  border: Border.all(color: Colors.grey)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: TextButton(
                child: Text('Change Photo',
                    style: TextStyle(
                        color: Color.fromARGB(250, 255, 116, 102), fontWeight: FontWeight.bold)),
                onPressed: cubit.pickPhoto,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
