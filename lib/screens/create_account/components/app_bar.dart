import 'package:flutter/material.dart';

signUpAppBar() => AppBar(
  centerTitle: true,
  title: Text(
    "SignUp",
    style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
  ),
  elevation: 0,
  automaticallyImplyLeading: false,
  backgroundColor: Colors.white,
);