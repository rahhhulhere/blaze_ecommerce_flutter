import 'package:blaze/view/widgets/AppText.dart';
import 'package:flutter/material.dart';

import '../../widgets/constants.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: AppText(
          Title: "Cart Coming Soon",
          Color: PrimeColor,
        ),
      ),
    );
  }
}
