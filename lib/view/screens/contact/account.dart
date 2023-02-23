import 'package:blaze/view/widgets/drawer.dart';
import 'package:flutter/material.dart';

import '../../widgets/AppText.dart';
import '../../widgets/constants.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  dynamic size, width, height;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color(0xFFFAFAFA),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppText(
              Title: "Account",
              Color: RedColor,
              Size: 20,
            ),
          ],
        ),
        titleTextStyle: const TextStyle(),
      ),
      drawer: Align(
        alignment: Alignment.topLeft,
        child: Container(
          height: height * 0.8,
          child: const Drawer(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  topRight: Radius.circular(50)),
            ),
            backgroundColor: DrawerColor,
            child: DrawerWidget(),
          ),
        ),
      ),
      body: Text("Hello Rahul"),
    );
  }
}
