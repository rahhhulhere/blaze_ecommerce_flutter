import 'package:blaze/view/widgets/AppText.dart';
import 'package:flutter/material.dart';

import '../../widgets/constants.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: AppText(
          Title: "Setting Coming Soon",
          Color: PrimeColor,
        ),
      ),
    );
  }
}
