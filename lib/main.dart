import 'package:flutter/material.dart';
import 'package:login_ui/screen/home/view/home.dart';
import 'package:login_ui/screen/home/view/signin.dart';
import 'package:login_ui/screen/home/view/signup.dart';
import 'package:provider/provider.dart';
void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => signin(),
        'signup':(context) => signup(),
        'home':(context) => home(),
      },

    )
  );
}