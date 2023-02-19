import 'package:blaze/view/widgets/constants.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: PrimaryColor,
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("WELCOME",style: TextStyle(
              color: TextColor,
              fontFamily: 'Opensans',
              fontSize: 20,
            ),),
           Image.asset("asset/images/logo.png")
          ],
        ),
      )
    );
  }
}
