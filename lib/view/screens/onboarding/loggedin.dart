import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/AppText.dart';
import '../../widgets/constants.dart';

class LoggedIn extends StatefulWidget {
  const LoggedIn({Key? key}) : super(key: key);

  @override
  State<LoggedIn> createState() => _LoggedInState();
}

class _LoggedInState extends State<LoggedIn> {
  dynamic size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    const name = "Rahul";

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFFAFAFA),
          elevation: 0,
          leading: const Icon(
            Icons.arrow_back_ios,
            color: PrimaryColor,
            size: 18,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              AppText(
                Title: "Welcome",
                Color: RedColor,
                Size: 18,
              ),
            ],
          ),
          titleTextStyle: const TextStyle(),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
          child: Container(
            height: height * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: width / 1.8,
                    child: Image.asset("asset/images/logo_black.png")),
                Container(
                  width: width * 0.3,
                  height: height * 0.3,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                ),
                AppText(
                  Title: "Welcome Back",
                  Color: Colors.black,
                  Size: 30,
                ),
                AppText(
                  Title: name,
                  Color: Colors.black38,
                  Size: 25,
                ),
                Container(
                  alignment: Alignment.center,
                  width: width,
                  height: height * 0.058,
                  decoration: BoxDecoration(
                      color: RedColor,
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      border: Border.all(
                        color: RedColor,
                        width: 1.0,
                        style: BorderStyle.solid,
                      )),
                  child: AppText(
                    Title: "Sign In",
                    Color: TextColor,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: width,
                  height: height * 0.058,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      border: Border.all(
                        color: CupertinoColors.systemGrey,
                        width: 1.0,
                        style: BorderStyle.solid,
                      )),
                  child: AppText(
                    Title: "Switch Account",
                    Color: PrimaryColor,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppText(
                      Title: "Already an account?",
                      Color: Colors.black,
                    ),
                    AppText(
                      Title: "Sign In",
                      Color: RedColor,
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
