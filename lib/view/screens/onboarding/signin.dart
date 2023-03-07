import 'package:blaze/view/widgets/AppText.dart';
import 'package:blaze/view/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:blaze/view/widgets/password.dart';

import '../../widgets/customtextfield.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  var size, height, width;
  late String _password;
  final _passwordFieldKey = GlobalKey<FormFieldState<String>>();
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: SizedBox(
          height: height,
          child: Column(
            children: [
              Container(
                height: height * 0.70,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [PrimaryColor, Colors.white],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.4, 0.7],
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                        height: height * 0.2,
                        width: width / 1.8,
                        child: Image.asset("asset/images/logo.png")),
                    Container(
                      height: height * 0.5,
                      width: width,
                      decoration: const BoxDecoration(
                        // color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(
                              0.0,
                              9.0,
                            ),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ), //BoxShadow
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            AppText(
                              Title: "Welcome",
                              Color: Colors.black,
                              Size: 30,
                              Weight: FontWeight.w600,
                            ),
                            Container(
                                width: width / 2,
                                child: AppText(
                                  Title:
                                      "Sign up to get started and experience great shopping",
                                  Color: Colors.black,
                                )),
                            customTextFeild(
                              title: "Username",
                            ),
                            PasswordFeild(
                              fieldKey: _passwordFieldKey,
                              labelText: 'Password',
                              onFieldSubmitted: (String value) {
                                setState(() {
                                  this._password = value;
                                });
                              },
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: width,
                              height: height * 0.058,
                              decoration: BoxDecoration(
                                  color: PrimeColor,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30)),
                                  border: Border.all(
                                    color: PrimeColor,
                                    width: 1.0,
                                    style: BorderStyle.solid,
                                  )),
                              child: AppText(
                                Title: "Sign In",
                                Color: TextColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: height * 0.30,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AppText(
                      Title: "-OR-",
                      Color: PrimaryColor,
                      Size: 20,
                      Weight: FontWeight.w400,
                    ),
                    Container(
                      width: width / 1.5,
                      height: height * 0.05,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                            color: Colors.grey,
                            width: 1.0,
                            style: BorderStyle.solid,
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(
                            Icons.facebook,
                            color: Colors.blue,
                          ),
                          AppText(
                            Title: "Sign In With Facebook",
                            Color: PrimaryColor,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: width / 1.5,
                      height: height * 0.05,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                            color: Colors.grey,
                            width: 1.0,
                            style: BorderStyle.solid,
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(
                            Icons.g_mobiledata_rounded,
                            color: Colors.red,
                          ),
                          AppText(
                            Title: "Sign In With Google",
                            Color: PrimaryColor,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppText(
                          Title: "Don't have an account?",
                          Color: Colors.black,
                        ),
                        AppText(
                          Title: "Sign Up",
                          Color: PrimeColor,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
