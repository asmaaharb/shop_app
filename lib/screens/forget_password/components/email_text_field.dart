import 'package:flutter/material.dart';
class EmailTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0,right: 10,top: 10),
          child: TextFormField(
            validator: (value){
              if(value.isEmpty) return 'Empty field!';
              else if(!value.contains('@')) return 'missing @!';
              else return null;
            },
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              hintText: "Email",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
        ),

      ],
    );
  }
}
