import 'package:blaze/view/screens/splashscreens/splashscreen.dart';
import 'package:blaze/view/screens/splashscreens/welcome.dart';
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
            const SizedBox(),
            AppText(
              Title: "Account",
              Color: RedColor,
              Size: 20,
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
      body: SingleChildScrollView(
        child: SizedBox(
          height: height,
          width: width,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: width * 0.3,
                    height: height * 0.3,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          Title: "Rahul Tiwari",
                          Size: 16,
                          Color: PrimaryColor,
                        ),
                        AppText(
                          Title: "tiwarirahul2508@gmail.com",
                          Size: 12,
                          Color: PrimaryColor,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: SizedBox(
                  height: height * 0.4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: height * 0.045,
                            width: width * 0.1,
                            decoration: const BoxDecoration(
                              color: Color(0xFFFFA1A1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            child: const Icon(
                              Icons.edit,
                              color: Color(0xFFFA5C5C),
                              size: 20,
                            ),
                          ),
                          Container(
                            width: width * 0.7,
                            alignment: Alignment.centerLeft,
                            child: AppText(
                              Title: "Edit Profile",
                              Color: Colors.black,
                              Size: 15,
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.black,
                            size: 18,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: height * 0.045,
                            width: width * 0.1,
                            decoration: const BoxDecoration(
                              color: Color(0xFFFFA1A1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            child: const Icon(
                              Icons.pin_drop_rounded,
                              color: Color(0xFFFA5C5C),
                              size: 20,
                            ),
                          ),
                          Container(
                            width: width * 0.7,
                            alignment: Alignment.centerLeft,
                            child: AppText(
                              Title: "Shipping Address",
                              Color: Colors.black,
                              Size: 15,
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.black,
                            size: 18,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: height * 0.045,
                            width: width * 0.1,
                            decoration: const BoxDecoration(
                              color: Color(0xFFFFA1A1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            child: const Icon(
                              Icons.watch_later,
                              color: Color(0xFFFA5C5C),
                              size: 20,
                            ),
                          ),
                          Container(
                            width: width * 0.7,
                            alignment: Alignment.centerLeft,
                            child: AppText(
                              Title: "Order History",
                              Color: Colors.black,
                              Size: 15,
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.black,
                            size: 18,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: height * 0.045,
                            width: width * 0.1,
                            decoration: const BoxDecoration(
                              color: Color(0xFFFFA1A1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            child: const Icon(
                              Icons.track_changes,
                              color: Color(0xFFFA5C5C),
                              size: 20,
                            ),
                          ),
                          Container(
                            width: width * 0.7,
                            alignment: Alignment.centerLeft,
                            child: AppText(
                              Title: "Track Order",
                              Color: Colors.black,
                              Size: 15,
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.black,
                            size: 18,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: height * 0.045,
                            width: width * 0.1,
                            decoration: const BoxDecoration(
                              color: Color(0xFFFFA1A1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            child: const Icon(
                              Icons.credit_card,
                              color: Color(0xFFFA5C5C),
                              size: 20,
                            ),
                          ),
                          Container(
                            width: width * 0.7,
                            alignment: Alignment.centerLeft,
                            child: AppText(
                              Title: "Cards",
                              Color: Colors.black,
                              Size: 15,
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.black,
                            size: 18,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: height * 0.045,
                            width: width * 0.1,
                            decoration: const BoxDecoration(
                              color: Color(0xFFFFA1A1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            child: const Icon(
                              Icons.logout,
                              color: Color(0xFFFA5C5C),
                              size: 20,
                            ),
                          ),
                          Container(
                            width: width * 0.7,
                            alignment: Alignment.centerLeft,
                            child: AppText(
                              Title: "Log Out",
                              Color: Colors.black,
                              Size: 15,
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.black,
                            size: 18,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
