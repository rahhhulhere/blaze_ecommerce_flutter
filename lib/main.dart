import 'package:blaze/view/screens/common/bottomNav.dart';
import 'package:blaze/view/screens/contact/account.dart';
import 'package:blaze/view/screens/onboarding/loggedin.dart';
import 'package:blaze/view/screens/onboarding/otp.dart';
import 'package:blaze/view/screens/onboarding/signin.dart';
import 'package:blaze/view/screens/onboarding/signup.dart';
import 'package:blaze/view/screens/splashscreens/splashscreen.dart';
import 'package:blaze/view/screens/splashscreens/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blaze - Ecommerce ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: BottomNavbar(),
    );
  }
}
