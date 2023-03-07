import 'package:blaze/view/screens/contact/account.dart';
import 'package:blaze/view/screens/onboarding/otp.dart';
import 'package:flutter/material.dart';

import '../../widgets/constants.dart';
import '../splashscreens/splashscreen.dart';
import '../splashscreens/welcome.dart';

class bottomNavbar extends StatefulWidget {
  const bottomNavbar({Key? key}) : super(key: key);

  @override
  State<bottomNavbar> createState() => _bottomNavbarState();
}

class _bottomNavbarState extends State<bottomNavbar> {
  int pageIndex = 0;
  final pages = [
    const AccountScreen(),
    const SplashScreen(),
    const WelcomeScreen(),
    const OtpScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: Container(
        height: 60,
        decoration: const BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Container(
          margin: EdgeInsets.only(top: 2, bottom: 0, left: 3, right: 3),
          decoration: const BoxDecoration(
            color: Colors.white,
            // border: Border(
            //   top: BorderSide(
            //       color: RedColor, width: 1.0, style: BorderStyle.solid),
            //   left: BorderSide(
            //       color: RedColor, width: 1.0, style: BorderStyle.solid),
            //   right: BorderSide(
            //       color: RedColor, width: 1.0, style: BorderStyle.solid),
            // )
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      pageIndex = 0;
                      print(pageIndex);
                    });
                  },
                  icon: pageIndex == 0.0
                      ? const Icon(
                          Icons.home_outlined,
                          size: 22,
                          color: Colors.red,
                        )
                      : const Icon(
                          Icons.home,
                          size: 15,
                          color: Colors.grey,
                        )),
              IconButton(
                onPressed: () {
                  setState(() {
                    pageIndex = 1;
                    print(pageIndex);
                  });
                },
                icon: pageIndex == 1
                    ? const Icon(
                        Icons.shopping_basket_outlined,
                        size: 22,
                        color: Colors.red,
                      )
                    : const Icon(
                        Icons.shopping_basket,
                        size: 15,
                        color: Colors.grey,
                      ),
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      pageIndex = 2;
                      print(pageIndex);
                    });
                  },
                  icon: pageIndex == 2
                      ? const Icon(
                          Icons.account_circle_outlined,
                          size: 22,
                          color: Colors.red,
                        )
                      : const Icon(
                          Icons.account_circle,
                          size: 15,
                          color: Colors.grey,
                        )),
              IconButton(
                  onPressed: () {
                    setState(() {
                      pageIndex = 3;
                      print(pageIndex);
                    });
                  },
                  icon: pageIndex == 3
                      ? const Icon(
                          Icons.settings,
                          size: 22,
                          color: Colors.red,
                        )
                      : const Icon(
                          Icons.settings,
                          size: 15,
                          color: Colors.grey,
                        )),
            ],
          ),
        ),
      ),
    );
  }
}
