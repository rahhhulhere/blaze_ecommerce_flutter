import 'package:blaze/view/widgets/customtextfield.dart';
import 'package:blaze/view/widgets/password.dart';
import 'package:flutter/material.dart';

import '../../widgets/AppText.dart';
import '../../widgets/constants.dart';

class signUp extends StatefulWidget {
  const signUp({Key? key}) : super(key: key);

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  var size,height,width;
  final _passwordFieldKey = GlobalKey<FormFieldState<String>>();

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height,
          padding: EdgeInsets.only(left: 30,right: 30, top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      size: 18,
                    ),
                  ),
                  AppText(Title: "Sign Up", Color: RedColor,Size: 18,)
                ],
              ),
              Container(
                  width: width/1.8,
                  child: Image.asset("asset/images/logo_black.png")),
              Stack(
                children: [
                  Container(
                    width: width*0.3,
                    height: height*0.3,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    ),
                  ),
                  Positioned(
                    bottom: height*0.1,
                    right: width*0.004,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: RedColor,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.edit,
                        size: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              customTextFeild(title: "Username",),
              customTextFeild(title: "Email"),
              PasswordFeild(
                fieldKey: _passwordFieldKey,
                labelText: 'Password',
              ),
              Container(
                alignment: Alignment.centerRight,
                  child: AppText(Title: "Forgot Password ?", Color: PrimaryColor,)),
              Container(
                alignment: Alignment.center,
                width: width,
                height: height*0.058,
                decoration: BoxDecoration(
                    color: RedColor,
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    border: Border.all(
                      color: RedColor,
                      width: 1.0,
                      style: BorderStyle.solid,
                    )
                ),
                child:
                AppText(Title: "Sign In", Color: TextColor,),

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText(Title: "Already an account?",Color: Colors.black,),
                  AppText(Title: "Sign In", Color: RedColor,)
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}
