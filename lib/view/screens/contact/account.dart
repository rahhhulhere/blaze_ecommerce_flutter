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
      body: Column(
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
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: height * 0.045,
                    width: width * 0.1,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFA1A1),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: const Icon(
                      Icons.edit,
                      color: Color(0xFFFA5C5C),
                      size: 20,
                    ),
                  ),
                  AppText(
                    Title: "Edit Profile",
                    Color: Colors.black,
                    Size: 15,
                  ),
                  const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.black,
                    size: 18,
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
