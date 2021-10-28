import 'package:flutter/material.dart';

loginAppBar() => AppBar(
  centerTitle: true,
  title: Text(
    "Login",
    style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
  ),
  elevation: 0,
  automaticallyImplyLeading: false,
  backgroundColor: Colors.white,
);