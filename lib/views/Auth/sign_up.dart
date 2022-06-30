import 'package:baba_boota/constant/colors.dart';
import 'package:baba_boota/views/Auth/verify_phone.dart';
import 'package:baba_boota/widget/widget.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: fBackgroundColor,
        body: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    const Icon(Icons.account_circle, size: 50),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Create account on',
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
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextFormField(
                  autocorrect: false,
                  decoration: textFormFieldsInputDecoration("Email"),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Phone",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.93.w,
                  height: MediaQuery.of(context).size.width * 0.15.h,
                  child: Row(
                    children: [
                      CountryCodePicker(
                        initialSelection: 'Pakistan',
                        showFlag: false,
                        textStyle: const TextStyle(
                          color: Colors.black,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.grey,
                        ),
                        showDropDownButton: true,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 22.0),
                          child: TextFormField(
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp(r'[0-9]')),
                              LengthLimitingTextInputFormatter(10)
                            ],
                            keyboardType: TextInputType.phone,
                            decoration: const InputDecoration(
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                TextFormField(
                  decoration: textFormFieldsInputDecoration("Password"),
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextFormField(
                  decoration: textFormFieldsInputDecoration("Conform Password"),
                ),
                SizedBox(
                  height: 100.h,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7.w,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const VerifyPhoneNo()));
                    },
                    child: const Text(
                      "Sign up",
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
                    text: "Already have an account? ",
                    style: const TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                          text: 'Sign in',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Navigator.of(context).pop(),
                          style: const TextStyle(
                              color: fBtnColor, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                SizedBox(height: 30.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
