import 'package:blaze/view/screens/cart/cart.dart';
import 'package:blaze/view/screens/common/setting.dart';
import 'package:blaze/view/screens/contact/account.dart';
import 'package:blaze/view/screens/onboarding/otp.dart';
import 'package:blaze/view/screens/product/dashboard.dart';
import 'package:blaze/view/widgets/AppText.dart';
import 'package:blaze/view/widgets/drawer.dart';
import 'package:flutter/material.dart';

import '../../widgets/constants.dart';
import '../splashscreens/splashscreen.dart';
import '../splashscreens/welcome.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int pageIndex = 0;
  dynamic size, height, width;
  final pages = [
    const Dashboard(),
    const CartScreen(),
    const AccountScreen(),
    const SettingScreen(),
  ];

  final page_title = ["Dashboard", "Cart", "Account", "Setting"];
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height - AppBar().preferredSize.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color(0xFFFAFAFA),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // const SizedBox(),
            Container(
              width: width * 0.67,
              alignment: Alignment.center,
              child: AppText(
                Title: page_title[pageIndex],
                Color: PrimeColor,
                Size: 20,
              ),
            ),
            const Icon(
              Icons.search,
              color: Color(0xFF414141),
            )
          ],
        ),
        titleTextStyle: const TextStyle(),
      ),
      drawer: const DrawerWidget(),
      body: pages[pageIndex],
      bottomNavigationBar: Container(
        height: 60,
        decoration: const BoxDecoration(
          color: PrimeColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Container(
          margin: const EdgeInsets.only(top: 2, bottom: 0, left: 1, right: 1),
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
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          pageIndex = 0;
                        });
                      },
                      icon: pageIndex == 0.0
                          ? const Icon(
                              Icons.home_outlined,
                              size: 22,
                              color: PrimeColor,
                            )
                          : const Icon(
                              Icons.home,
                              size: 15,
                              color: Colors.grey,
                            )),
                  pageIndex == 0
                      ? AppText(
                          Title: "Home",
                          Color: PrimeColor,
                        )
                      : AppText(Title: "")
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        pageIndex = 1;
                      });
                    },
                    icon: pageIndex == 1
                        ? const Icon(
                            Icons.shopping_basket_outlined,
                            size: 22,
                            color: PrimeColor,
                          )
                        : const Icon(
                            Icons.shopping_basket,
                            size: 15,
                            color: Colors.grey,
                          ),
                  ),
                  pageIndex == 1
                      ? AppText(
                          Title: "Cart",
                          Color: PrimeColor,
                        )
                      : AppText(Title: "")
                ],
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          pageIndex = 2;
                        });
                      },
                      icon: pageIndex == 2
                          ? const Icon(
                              Icons.account_circle_outlined,
                              size: 22,
                              color: PrimeColor,
                            )
                          : const Icon(
                              Icons.account_circle,
                              size: 15,
                              color: Colors.grey,
                            )),
                  pageIndex == 2
                      ? AppText(
                          Title: "Account",
                          Color: PrimeColor,
                        )
                      : AppText(Title: "")
                ],
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          pageIndex = 3;
                        });
                      },
                      icon: pageIndex == 3
                          ? const Icon(
                              Icons.settings,
                              size: 22,
                              color: PrimeColor,
                            )
                          : const Icon(
                              Icons.settings,
                              size: 15,
                              color: Colors.grey,
                            )),
                  pageIndex == 3
                      ? AppText(
                          Title: "Setting",
                          Color: PrimeColor,
                        )
                      : AppText(Title: "")
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
