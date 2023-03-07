import 'package:blaze/view/widgets/AppText.dart';
import 'package:blaze/view/widgets/constants.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: AppText(
          Title: "Dashboard Coming Soon",
          Color: PrimeColor,
        ),
      ),
    );
  }
}
