import 'package:blaze/view/widgets/otpinput.dart';
import 'package:flutter/material.dart';
import '../../widgets/AppText.dart';
import '../../widgets/constants.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();
  final TextEditingController _fieldFive = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double safe = MediaQuery.of(context).padding.top;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: GreyColor,
      appBar: AppBar(
        backgroundColor: GreyColor,
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
              Title: "Sign Up",
              Color: PrimeColor,
              Size: 18,
            ),
          ],
        ),
        titleTextStyle: const TextStyle(),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
        child: Column(
          children: [
            // Logo
            SizedBox(
                height: height * 0.25,
                width: width / 1.5,
                child: Image.asset("asset/images/logo_black.png")),
            //Text
            Container(
                height: height * 0.1,
                child: AppText(
                  Title: "Enter OTP",
                  Color: PrimaryColor,
                  Size: 20,
                )),
            //OTP TextFields
            Container(
              height: height * 0.25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OtpInput(_fieldOne, true),
                  OtpInput(_fieldTwo, false),
                  OtpInput(_fieldThree, false),
                  OtpInput(_fieldFour, false),
                  OtpInput(_fieldFive, false),
                ],
              ),
            ),
            // Extra Spacing
            SizedBox(
              height: height * 0.1,
            ),
            // Submit Button
            InkWell(
              customBorder: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              onTap: () {
                setState(() {
                  // print(otp);
                });
              },
              child: Container(
                alignment: Alignment.center,
                width: width,
                height: height * 0.058,
                decoration: BoxDecoration(
                    color: PrimeColor,
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    border: Border.all(
                      color: PrimeColor,
                      width: 1.0,
                      style: BorderStyle.solid,
                    )),
                child: AppText(
                  Title: "Submit",
                  Color: TextColor,
                ),
              ),
            ),
            //Text
            SizedBox(
              height: height * 0.1,
              width: width * 0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText(
                    Title: "Already an account?",
                    Color: Colors.black,
                  ),
                  AppText(
                    Title: "Sign In",
                    Color: PrimeColor,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
