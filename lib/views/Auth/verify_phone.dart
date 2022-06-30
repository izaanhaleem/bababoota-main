import 'package:baba_boota/constant/colors.dart';
import 'package:baba_boota/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerifyPhoneNo extends StatefulWidget {
  const VerifyPhoneNo({Key? key}) : super(key: key);

  @override
  _VerifyPhoneNoState createState() => _VerifyPhoneNoState();
}

class _VerifyPhoneNoState extends State<VerifyPhoneNo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: fBackgroundColor,
        appBar: AppBar(
          backgroundColor: fBackgroundColor,
          leading: (ModalRoute.of(context)?.canPop ?? false)
              ? const BackButton()
              : null,
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0.0,
          title: const Text(
            'Verify Phone Number',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          titleTextStyle: const TextStyle(color: Colors.black),
        ),
        endDrawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                    child: Text(
                  "We sent you a one time\nOTP code",
                  style: TextStyle(
                    fontSize: 20.sp,
                  ),
                  textAlign: TextAlign.center,
                )),
                SizedBox(height: MediaQuery.of(context).size.height * 0.2.h),
                Container(
                  margin: const EdgeInsets.only(left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _textFieldOTP(first: true, last: false),
                      _textFieldOTP(first: false, last: false),
                      _textFieldOTP(first: false, last: false),
                      _textFieldOTP(first: false, last: true),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.1.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "On this number",
                          style: TextStyle(fontSize: 16.sp),
                        ),
                        Text("92 000 000 0000",
                            style: TextStyle(
                                color: fBtnColor,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.2.w,
                    ),
                    const CircleAvatar(
                      child: Icon(
                        Icons.edit,
                        color: fBtnColor,
                      ),
                      backgroundColor: Colors.white,
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.24.h,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7.w,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Continue to verify",
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
                  text: const TextSpan(
                    text: "Didn't receive a code? ",
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                          text: 'Resend OTP',
                          // recognizer: TapGestureRecognizer()
                          //   ..onTap = () => Navigator.of(context).pop(),
                          style: TextStyle(
                              color: fBtnColor, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _textFieldOTP({required bool first, last}) {
    return SizedBox(
      height: 55.h,
      child: AspectRatio(
        aspectRatio: 0.9,
        child: TextFormField(
          showCursor: false,
          autofocus: true,
          maxLength: 1,
          keyboardType: TextInputType.number,
          style: TextStyle(fontSize: 24.sp),
          textAlign: TextAlign.center,
          decoration: otpInputDecoration,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.isEmpty && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
        ),
      ),
    );
  }

  final otpInputDecoration = InputDecoration(
    counter: const Offstage(),
    fillColor: Colors.white,
    filled: true,
    enabledBorder: outlineInputBorder(),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: fBtnColor)),
  );
}
