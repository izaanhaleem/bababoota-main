import 'package:baba_boota/constant/colors.dart';
import 'package:baba_boota/views/Home/component/icon_btn_with_counter.dart';
import 'package:baba_boota/widget/widget.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: fBackgroundColor,
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                        child: const Icon(Icons.arrow_back)
                    ),
                    // Image.asset(name)
                    const Spacer(),
                    IconBtnWithCounter(
                        icon: Icons.shopping_cart_outlined, press: () {})
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "SETTINGS",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("James Smith",
                            style: TextStyle(fontWeight: FontWeight.w500)),
                        Text(
                          "jamessmith@gmail.com",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Personal information",
                                style: TextStyle(fontWeight: FontWeight.w500)),
                            TextButton(
                              style: TextButton.styleFrom(
                                  splashFactory: NoSplash.splashFactory),
                              onPressed: () {},
                              child: const Text(
                                'Update',
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ],
                        ),
                        TextFormField(
                          decoration:
                              textFormFieldsInputDecoration("Full Name"),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          autocorrect: false,
                          decoration: textFormFieldsInputDecoration("Email"),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "Phone",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.93,
                          height: MediaQuery.of(context).size.height * 0.08,
                          child: Row(
                            children: [
                              CountryCodePicker(
                                initialSelection: 'Pakistan',
                                showFlag: false,
                                textStyle: const TextStyle(
                                  color: Colors.grey,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.grey,
                                ),
                                showDropDownButton: true,
                              ),
                              // SizedBox(width: 20,),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 26.0),
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
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 15),
                    child: Row(
                      children: [
                        const Icon(Icons.lock_outline),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "Update Password",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w500),
                        ),
                        const Spacer(),
                        TextButton(
                          style: TextButton.styleFrom(
                              splashFactory: NoSplash.splashFactory),
                          onPressed: () {},
                          child: const Text(
                            'Update',
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
