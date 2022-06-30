import 'package:baba_boota/constant/colors.dart';
import 'package:baba_boota/views/Auth/sign_up.dart';
import 'package:baba_boota/widget/botom_nav_bar.dart';
import 'package:baba_boota/widget/widget.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
          statusBarColor: fBackgroundColor,
          statusBarIconBrightness: Brightness.dark),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: fBackgroundColor,
          body: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 10),
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.account_circle, size: 50),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome to',
                              style: Theme.of(context).textTheme.headline5,
                            ),
                            Text(
                              'Baba Boota',
                              style: Theme.of(context).textTheme.headline5,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    TextFormField(
                      decoration: textFormFieldsInputDecoration("Full Name"),
                      validator: (email) =>
                          email != null && !EmailValidator.validate(email)
                              ? 'Enter a valid email'
                              : null,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextFormField(
                      decoration: textFormFieldsInputDecoration("Password"),
                      validator: (value) {
                        if (value != null && value.length < 8) {
                          return 'Enter min.8 character';
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 80.h,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7.w,
                      child: ElevatedButton(
                        onPressed: () {
                          final isValidForm = formKey.currentState!.validate();
                          if (isValidForm) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const BottomNavBar()));
                          }
                        },
                        child: const Text(
                          "Sign in",
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        style: simpleButton(fBtnColor),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    RichText(
                      text: TextSpan(
                        text: "Don't have an account? ",
                        style: const TextStyle(color: Colors.black),
                        children: [
                          TextSpan(
                              text: 'Sign up',
                              style: const TextStyle(
                                  color: fBtnColor,
                                  fontWeight: FontWeight.bold),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SignUpScreen()))),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Row(children: const [
                      Expanded(child: Divider()),
                      Text(
                        "Or Sign in with social media",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Expanded(child: Divider()),
                    ]),
                    SizedBox(
                      height: 30.h,
                    ),
                    SignInButton(
                      Buttons.Facebook,
                      text: "Continue with Facebook",
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SignInButton(
                      Buttons.Google,
                      text: "Continue with Google",
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
