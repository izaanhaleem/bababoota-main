import 'package:baba_boota/constant/colors.dart';
import 'package:baba_boota/views/Home/component/icon_btn_with_counter.dart';
import 'package:baba_boota/views/Profile/component/messages.dart';
import 'package:baba_boota/views/Profile/component/notifications.dart';
import 'package:baba_boota/views/Profile/component/my_orders.dart';
import 'package:baba_boota/views/Profile/component/my_review.dart';
import 'package:baba_boota/views/Profile/component/icon_counter.dart';
import 'package:baba_boota/views/Profile/component/pending_order.dart';
import 'package:baba_boota/views/Profile/component/settings.dart';
import 'package:baba_boota/views/Profile/component/track_order.dart';
import 'package:flutter/material.dart';

import 'component/map_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: fBackgroundColor,
          body: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 30),
                      child: Row(
                        children: [
                          Icon(Icons.account_circle, size: 50),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'James Smith',
                                style: Theme.of(context).textTheme.headline5,
                              ),
                              Text('james.smith@gmail.com'),
                            ],
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: IconBtnWithCounter(
                                icon: Icons.shopping_cart_outlined,
                                press: () {}),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Account Balance ",
                              ),
                              Spacer(),
                              Text(
                                "0.0 USD",
                                style: TextStyle(color: Colors.red),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.arrow_forward_ios),
                            ],
                          ),
                          Divider(
                            thickness: 1.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const MyOrders()));
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: fBackgroundColor),
                                      child: Icon(Icons.shopping_cart_outlined,
                                          size: 30),
                                    ),
                                    Text("My Orders")
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const PendingOrders()));
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: fBackgroundColor),
                                      child: Icon(Icons.shopping_cart_outlined,
                                          size: 30),
                                    ),
                                    Text("Pending Orders")
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const TrackOrder()));
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: fBackgroundColor),
                                      child: Icon(
                                        Icons.my_location,
                                        size: 30,
                                      ),
                                    ),
                                    Text("Track Orders")
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "My Account",
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Messages()));
                            },
                            child: Row(
                              children: [
                                Text(
                                  "Messages",
                                ),
                                Spacer(),
                                IconCounter(),
                                Padding(
                                  padding: const EdgeInsets.only(left: 13.0),
                                  child: Icon(Icons.arrow_forward_ios),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 1.0,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const MyReview()));
                            },
                            child: Row(
                              children: [
                                Text(
                                  "My Reviews",
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(left: 13.0),
                                  child: Icon(Icons.arrow_forward_ios),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 1.0,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Notifications()));
                            },
                            child: Row(
                              children: [
                                Text(
                                  "Notifications",
                                ),
                                Spacer(),
                                IconCounter(),
                                Padding(
                                  padding: const EdgeInsets.only(left: 13.0),
                                  child: Icon(Icons.arrow_forward_ios),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 1.0,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const MapScreen()));
                            },
                            child: Row(
                              children: [
                                Text(
                                  "Select Location",
                                ),
                                Spacer(),
                                Icon(Icons.arrow_forward_ios),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 1.0,
                          ),
                          Row(
                            children: [
                              Text(
                                "Select Language",
                              ),
                              Spacer(),
                              Icon(Icons.arrow_forward_ios),
                            ],
                          ),
                          Divider(
                            thickness: 1.0,
                          ),
                          Row(
                            children: [
                              Text(
                                "Select Currency",
                              ),
                              Spacer(),
                              Icon(Icons.arrow_forward_ios),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Settings()));
                            },
                            child: Row(
                              children: [
                                Text(
                                  "Settings",
                                ),
                                Spacer(),
                                Icon(Icons.arrow_forward_ios),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 1.0,
                          ),
                          Row(
                            children: [
                              Text(
                                "Help",
                              ),
                              Spacer(),
                              Icon(Icons.arrow_forward_ios),
                            ],
                          ),
                          Divider(
                            thickness: 1.0,
                          ),
                          Row(
                            children: [
                              Text(
                                "Logout",
                                style: TextStyle(color: Colors.red),
                              ),
                              Spacer(),
                              Icon(Icons.arrow_forward_ios),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.facebook,
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.facebook,
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.facebook,
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.facebook,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  Center(
                      child: Text(
                    "2021 Baba Boota",
                    style: TextStyle(color: Colors.grey),
                  ))
                ],
              ))),
    );
  }
}
