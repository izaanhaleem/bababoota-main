import 'package:baba_boota/constant/colors.dart';
import 'package:baba_boota/model/list_model.dart';
import 'package:baba_boota/views/Home/home_screen.dart';
import 'package:baba_boota/views/Profile/component/payments.dart';
import 'package:baba_boota/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  bool isChecked = false;
  int _itemCount = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          actions: [buildCheckBox()],
        ),
        backgroundColor: fBackgroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(
                        "https://img.freepik.com/free-vector/promotion-sale-labels-best-offers_206725-127.jpg?size=626&ext=jpg",
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.12,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      // height: MediaQuery.of(context).size.height * 0.4,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: list.length,
                            separatorBuilder: (context, index) {
                              return const Divider(
                                color: Colors.grey,
                                thickness: 2.0,
                              );
                            },
                            itemBuilder: (context, index) => Column(
                                  children: [
                                    ListTile(
                                      title: Text(
                                        list[index].model,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w700),
                                      ),
                                      trailing: Image.asset(list[index].image),
                                    ),
                                    ListTile(
                                      visualDensity: const VisualDensity(
                                          horizontal: 0, vertical: -4),
                                      leading: Text(list[index].currentPrice,
                                          style: const TextStyle(
                                              color: Colors.red,
                                              fontWeight: FontWeight.w700)),
                                      horizontalTitleGap: 5.0,
                                      title: Text(
                                        list[index].oldPrice,
                                        style: const TextStyle(
                                          fontSize: 13,
                                          decoration:
                                              TextDecoration.lineThrough,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                    ListTile(
                                        visualDensity: const VisualDensity(
                                            horizontal: 0, vertical: -4),
                                        leading: Container(
                                          width: 80,
                                          height: 30,
                                          color: Colors.yellow,
                                          child: Center(
                                            child: Text(
                                              list[index].express,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                        title: Text(
                                          list[index].deliveryType,
                                          style: const TextStyle(
                                              color: Colors.red,
                                              decoration:
                                                  TextDecoration.underline),
                                        )),
                                    ListTile(
                                      leading: counterIncrement(),
                                      trailing: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(list[index].remove),
                                          const Icon(
                                            Icons.delete,
                                            size: 20.0,
                                            color: Colors.red,
                                          )
                                        ],
                                      ),
                                    ),
                                    Text(
                                      list[index].modifyOrder,
                                      style: const TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w500),
                                    )

                                    // RichText(
                                    //     text: TextSpan(
                                    //         text: list[index].deliveryTime,
                                    //         children: [
                                    //       TextSpan(
                                    //           text: list[index].dateTime,
                                    //           style: TextStyle(
                                    //               fontWeight: FontWeight.bold)),
                                    //     ])),
                                  ],
                                )),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                          color: fCouponBoxColor,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Stack(
                        children: const [
                          TextField(
                            maxLengthEnforcement: MaxLengthEnforcement.enforced,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(
                                    left: 19, right: 50, bottom: 8),
                                border: InputBorder.none,
                                hintText: "Enter Coupon Code"),
                          ),
                          Positioned(
                              right: 10,
                              top: 10,
                              child: Text(
                                "Apply",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500),
                              ))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Payment(),
                            ),
                          );
                        },
                        title: const Text(
                          "Select Payment Method",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        subtitle: const Text("Cash On Delivery (COD)"),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Column(
                        children: [
                          ListTile(
                            title: Row(
                              children: const [
                                Text("Sub Total"),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "(1 item)",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                            trailing: const Text("Rs 33,333"),
                          ),
                          const ListTile(
                            title: Text("Shipping free"),
                            trailing: Text(
                              "Free",
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                          const ListTile(
                            title: Text(
                              "Sub Total",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            trailing: Text(
                              "Rs 33,333",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text("(Including of VAT)"),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(
                      thickness: 2.0,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "YOU MIGHT LIKE THESE",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: ListView.builder(
                        itemCount: list.length,
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => RecommendedProducts(
                            listModel: list[index], press: () => {}),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Confirm Order",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  style: simpleButton(fConformOrderColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCheckBox() => SizedBox(
        width: 200,
        child: ListTile(
          onTap: () {
            setState(() {
              isChecked = !isChecked;
            });
          },
          title: Transform(
            transform: Matrix4.translationValues(35.0, 0.0, 0.0),
            child: const Text("Remove All",
                style: TextStyle(fontSize: 18, color: Colors.red)),
          ),
          trailing: Checkbox(
              activeColor: Colors.yellow,
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              }),
        ),
      );

  Widget counterIncrement() {
    return FittedBox(
      child: Row(
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(color: Colors.grey)),
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: const Icon(
                Icons.remove,
                color: Colors.black,
              ),
              onPressed: () {
                setState(() {
                  _itemCount != 1 ? _itemCount-- : _itemCount;
                });
              },
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            _itemCount.toString(),
            style: const TextStyle(
                color: Colors.blue, fontSize: 15, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(color: Colors.grey)),
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: const Icon(
                Icons.add,
                color: Colors.black,
              ),
              onPressed: () {
                setState(() {
                  _itemCount++;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
