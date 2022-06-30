import 'package:baba_boota/constant/colors.dart';
import 'package:baba_boota/views/Cart/cart_screen.dart';
import 'package:baba_boota/views/Home/component/icon_btn_with_counter.dart';
import 'package:flutter/material.dart';

class OrderTracking extends StatefulWidget {
  const OrderTracking({Key? key}) : super(key: key);

  @override
  _OrderTrackingState createState() => _OrderTrackingState();
}

class _OrderTrackingState extends State<OrderTracking> {
  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: fBackgroundColor,
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  ListTile(
                    contentPadding:
                        const EdgeInsets.only(left: 0.0, right: 0.0),
                    leading: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    trailing: IconBtnWithCounter(
                        icon: Icons.shopping_cart_outlined,
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CartScreen()));
                        }),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "TRACK ORDER",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Column(
                      children: [
                        ListTile(
                          title: RichText(
                            text: const TextSpan(
                              text: 'Free Delivery by ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Tomorrow, Nov 26',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: fConformOrderColor)),
                              ],
                            ),
                          ),
                          trailing: Container(
                            width: 80,
                            height: 35,
                            color: Colors.white,
                            child: const Center(child: Text("Express")),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            width: double.infinity,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Center(
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: RichText(
                                    text: const TextSpan(
                                      text: 'Courier No: ',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: 'PK BB-124521-A',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: fConformOrderColor)),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                              width: double.infinity,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.white,
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Center(
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: RichText(
                                          text: const TextSpan(
                                            text: 'Tracking No: ',
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: 'PK BB-124521-A',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color:
                                                          fConformOrderColor)),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 10,
                                    top: 6,
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          border:
                                              Border.all(color: Colors.grey)),
                                      child: IconButton(
                                        padding: EdgeInsets.zero,
                                        icon: const Icon(
                                          Icons.add,
                                          color: Colors.black,
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
                                  )
                                ],
                              )),
                        ),
                        const SizedBox(
                          height: 14,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "SHIPPING TO",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: const TextSpan(
                                  text: 'Receiver: ',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Robert Wills',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey)),
                                  ],
                                ),
                              ),
                              RichText(
                                text: const TextSpan(
                                  text: 'Contact No: ',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '+92000000',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey)),
                                  ],
                                ),
                              ),
                              const ListTile(
                                dense: true,
                                contentPadding:
                                    EdgeInsets.only(left: 0.0, right: 0.0),
                                leading: Icon(
                                  Icons.add_location,
                                  color: Colors.black,
                                ),
                                title: Align(
                                  alignment: Alignment(-1.3, 0),
                                  child: Text(
                                    "Pakistan",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.red,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 5,
                  ),
         /*         Theme(
                    data: ThemeData(
                      colorScheme: Theme.of(context)
                          .colorScheme
                          .copyWith(primary: fConformOrderColor),
                    ),
                    child: Stepper(
                      controlsBuilder: (BuildContext, context,
                          {onStepContinue, onStepCancel}) {
                        return Row(
                          children: [
                            Container(
                              child: null,
                            ),
                            Container(
                              child: null,
                            ),
                          ],
                        );
                      },
                      steps: getSteps(),
                      physics: ScrollPhysics(),
                      currentStep: currentStep,
                    ),
                  )*/
                ],
              ),
            )));
  }

  List<Step> getSteps() => [
        Step(
            title: Text(
              'Delivered',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
            ),
            content: Text(
                "PakistanPakistanPakistanPakistanPakistanPakistanPakistanPakistan")),
        Step(
            title: Text(
              'Out For Delivery',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
            ),
            content: Container()),
        Step(
            isActive: currentStep >= 0,
            state: StepState.complete,
            title: const Text(
              'Shipped',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
            ),
            content: Container()),
        Step(
            title: Text(
              'Arrived at Warehouse',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
            ),
            content: Container()),
        Step(
            title: Text(
              'Pickup in Progress',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
            ),
            content: Container()),
        Step(
            title: Text(
              'Package being Prepared',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
            ),
            content: Container()),
        Step(
            title: Text(
              'Package Processing Started',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
            ),
            content: Text("aaaaaaaaaaaaaaaaaaaaa")),
      ];
}