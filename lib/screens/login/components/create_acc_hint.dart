import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tech_shop_app/screens/create_account/view.dart';
import 'package:tech_shop_app/widgets/normal_text.dart';

class CreateAccHint extends StatelessWidget {
  const CreateAccHint({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 70.0,top: 10),
          child: InkWell(
              onTap: () { Navigator.push(context, MaterialPageRoute(builder: (context) => CreateAccView()));},
              child: NormalText(
                title: "Create an account",
                color: Color.fromARGB(250,255, 116, 102),
              )),
        ),
      ],
    );
  }
}
