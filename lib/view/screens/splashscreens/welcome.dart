import 'package:blaze/view/widgets/constants.dart';
import 'package:flutter/material.dart';

import '../../widgets/AppText.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  List images = [
    "welcome-one.jpg",
    "welcome-two.jpg",
    "welcome-three.jpg",
  ];
  dynamic size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height - AppBar().preferredSize.height;
    width = size.width;
    return Scaffold(
        body: SizedBox(
      height: height,
      child: Stack(
        // alignment: Alignment.center,
        children: [
          SizedBox(
            height: height * 0.85,
            width: width,
            child: PageView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                itemBuilder: (_, index) {
                  return Container(
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("asset/images/" + images[index]),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.6), BlendMode.darken),
                      ),
                      borderRadius: const BorderRadius.vertical(
                        bottom: Radius.circular(40),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 40),
                      child: Row(
                        children: List.generate(3, (indexDots) {
                          return Container(
                            margin: const EdgeInsets.all(2),
                            width: index == indexDots ? 15 : 10,
                            height: index == indexDots ? 15 : 10,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: index == indexDots
                                    ? const Color(0xFFFA4248)
                                    : Colors.grey),
                          );
                        }),
                      ),
                    ),
                  );
                }),
          ),
          Positioned(
            left: width * 0.25,
            bottom: height * 0.13,
            width: width * 0.5,
            child: Container(
              alignment: Alignment.center,
              height: 50,
              width: width * 0.5,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: PrimeColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AppText(
                    Title: "GET STARTED",
                    Size: 16,
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 17,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: width * 0.35,
            top: height * 0.7,
            child: const Text(
              "WELCOME",
              style: TextStyle(
                color: TextColor,
                fontFamily: 'Opensans',
                fontSize: 20,
              ),
            ),
          ),
          Positioned(
              left: width * 0.12,
              top: height * 0.35,
              child: Image.asset("asset/images/logo.png")),
        ],
      ),
    ));
  }
}
