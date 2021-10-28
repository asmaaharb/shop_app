import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final TextInputType type;

  final String labelText;
  final bool isPassword;
  final IconData prefix;
  final bool isPrefix;

  const CustomTextFormField({
    Key key,
    @required this.controller,
    @required this.type,
    this.prefix,
    @required this.labelText,
    this.isPassword = false,
    this.isPrefix = true,
  }) : super(key: key);

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  String errorMessage(String str) {
    switch (widget.labelText) {
      case 'First Name':
        return 'First name is empty!';
      case 'Last Name':
        return 'Last name is empty!';
      case 'Email':
        return 'Email is empty!';
      case 'Password':
        return 'Password is empty!';
    }
    return 'hi';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: TextFormField(

          controller: widget.controller,
          keyboardType: widget.type,
          cursorColor: Color.fromARGB(250, 255, 116, 102),
          cursorHeight: 25,
          decoration: InputDecoration(
            border: InputBorder.none,
            labelText: widget.labelText,
            labelStyle: TextStyle(fontSize: 15, color: Colors.grey[700]),
            focusedBorder:

                UnderlineInputBorder(borderSide: BorderSide(color:  Color.fromARGB(250, 255, 116, 102))),
          )),
    );
  }
}
