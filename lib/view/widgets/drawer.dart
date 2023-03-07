import 'package:blaze/view/widgets/constants.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  dynamic size, width, height;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Align(
      alignment: Alignment.topLeft,
      child: SizedBox(
        height: height * 0.85,
        child: SizedBox(
            height: height * 0.8,
            child: Drawer(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    topRight: Radius.circular(50)),
              ),
              backgroundColor: DrawerColor,
              child: ListView(
                padding: const EdgeInsets.all(0),
                children: [
                  const DrawerHeader(
                    padding: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(50)),
                      color: LiteRed,
                    ), //BoxDecoration
                    child: UserAccountsDrawerHeader(
                      decoration: BoxDecoration(
                        color: LiteRed,
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(50)),
                      ),
                      accountName: Text(
                        "Rahul",
                        style: TextStyle(
                          color: TextColor,
                          fontFamily: "Montserrat",
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      accountEmail: Text(
                        "tiwarirahul2508@gmail.com",
                        style: TextStyle(
                          color: TextColor,
                          fontFamily: "Montserrat",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      currentAccountPictureSize: Size.square(50),
                      currentAccountPicture: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 165, 255, 137),
                        child: Text(
                          "R",
                          style: TextStyle(fontSize: 30.0, color: Colors.blue),
                        ), //Text
                      ), //circleAvatar
                    ), //UserAccountDrawerHeader
                  ), //Dr
                  const SizedBox(
                    height: 50,
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    title: const Text(
                      ' My Account ',
                      style: TextStyle(
                        color: TextColor,
                        fontFamily: "Montserrat",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    title: const Text(
                      ' Home ',
                      style: TextStyle(
                        color: TextColor,
                        fontFamily: "Montserrat",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.category,
                      color: Colors.white,
                    ),
                    title: const Text(
                      ' Category ',
                      style: TextStyle(
                        color: TextColor,
                        fontFamily: "Montserrat",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.production_quantity_limits,
                      color: Colors.white,
                    ),
                    title: const Text(
                      ' Products ',
                      style: TextStyle(
                        color: TextColor,
                        fontFamily: "Montserrat",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                    title: const Text(
                      ' Cart ',
                      style: TextStyle(
                        color: TextColor,
                        fontFamily: "Montserrat",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ListTile(
                    title: const Text(
                      'About Us',
                      style: TextStyle(
                        color: Color(0xFFFFD4DA),
                        fontFamily: "Montserrat",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text(
                      'LogOut',
                      style: TextStyle(
                        color: Color(0xFFFFD4DA),
                        fontFamily: "Montserrat",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
