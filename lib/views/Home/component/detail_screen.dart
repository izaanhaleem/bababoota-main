import 'package:baba_boota/constant/colors.dart';
import 'package:baba_boota/model/list_model.dart';
import 'package:baba_boota/views/Cart/cart_screen.dart';
import 'package:baba_boota/views/Home/component/select_colors.dart';
import 'package:baba_boota/widget/widget.dart';
import 'package:flutter/material.dart';

import '../home_screen.dart';

class DetailScreen extends StatefulWidget {
  final ListModel listModel;

  const DetailScreen({Key? key, required this.listModel}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: fBackgroundColor,
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: subAppBarMain(context)),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 10.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10.0,
                          ),
                          Center(
                            child: Image.asset(
                              widget.listModel.image!,
                            ),
                          ),
                          TweenAnimationBuilder(
                              tween: Tween<Alignment>(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight),
                              duration: const Duration(milliseconds: 4000),
                              builder: (context, Alignment i, _) {
                                return Stack(
                                  alignment: i,
                                  children: [
                                    SizedBox(
                                      height: 20,
                                      width: 115,
                                       child: CustomPaint(
                                        painter: PriceTagPaint(),
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 16.0),
                                            child: Align(
                                              alignment:
                                                  Alignment.centerRight,
                                              child: Text(
                                                widget.listModel.sale!,
                                                textAlign: TextAlign.center,
                                                style: const TextStyle(
                                                    fontSize: 10,
                                                    fontWeight:
                                                        FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 50,
                                      height: 20,
                                      color: Colors.black,
                                      child: const Center(
                                        child: Text(
                                          "SALE",
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              }),
                          SizedBox(
                            height: 20,
                            width: 65,
                            child: CustomPaint(
                              painter: ExpressPaint(),
                              child: Center(
                                child: Text(
                                  widget.listModel.express!,
                                  style: const TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, top: 15.0),
                            child: RichText(
                              text: const TextSpan(
                                text: "BRAND: ",
                                style: TextStyle(color: Colors.grey),
                                children: [
                                  TextSpan(
                                    text: 'APPLE',
                                    style: TextStyle(
                                        color: fBtnColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                                "APPLE IPHONE 13 PRO MAX -6.7 APPLE IPHONE 13 PRO MAX -6.7"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Row(
                              children: const [
                                Text(
                                  "Rs 331,999",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "33333",
                                  style: TextStyle(
                                    fontSize: 10,
                                    decoration: TextDecoration.lineThrough,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "4.8",
                                  style: TextStyle(color: Colors.green),
                                ),
                                Text(
                                  "20K+views",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.17,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                          "https://img.freepik.com/free-vector/promotion-sale-labels-best-offers_206725-127.jpg?size=626&ext=jpg",
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "SELECT OPTIONS",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.chevron_right,
                                      color: Colors.black,
                                    )),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Text(
                              "Color , Size , Model , Quantity",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  context: context,
                                  builder: (context) => const ColorsOption());
                            },
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: _chooseColors(),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text("256GB")
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Delivery To",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            ListTile(
                              dense: true,
                              contentPadding:
                                  const EdgeInsets.only(left: 0.0, right: 0.0),
                              leading: const Icon(
                                Icons.add_location,
                                color: Colors.black,
                              ),
                              title: const Align(
                                alignment: Alignment(-1.3, 0),
                                child: Text(
                                  "Pakistan",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.red,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              trailing: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.chevron_right,
                                    color: Colors.black,
                                  )),
                            ),
                            RichText(
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
                                        color: fConformOrderColor),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white),
                      child: ListTile(
                        title: RichText(
                          text: const TextSpan(
                            text: "Sold by ",
                            style: TextStyle(color: Colors.black),
                            children: [
                              TextSpan(
                                text: 'Example Company',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.chevron_right,
                              color: Colors.black),
                        ),
                        subtitle: RichText(
                          text: const TextSpan(
                            text: "4.3",
                            style: TextStyle(
                                color: Colors.yellow,
                                fontWeight: FontWeight.w600),
                            children: [
                              TextSpan(
                                text: '(4.151) Seller review',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: TabBar(
                          controller: _tabController,
                          indicatorColor: Colors.black,
                          indicatorSize: TabBarIndicatorSize.label,
                          labelColor: Colors.black,
                          tabs: const [
                            Tab(
                              child: Text(
                                "OverView",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Specifications",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0)),
                        height: MediaQuery.of(context).size.height * 0.4,
                        child: TabBarView(
                          controller: _tabController,
                          children: const [
                            Center(
                              child: Text('Display Tab 1',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Center(
                              child: Text('Display Tab 2',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 16,
                              ),
                              const Text(
                                "4.7",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              const Spacer(),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.chevron_right)),
                            ],
                          ),
                          const Text(
                            "Rating 7 Review (405)",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 16),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          ListTile(
                              leading: const Text(
                                "John wills",
                              ),
                              title: Transform.translate(
                                offset: const Offset(-10, -5),
                                child: const Text(
                                  "1 day(s) ago",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              trailing: const Text("verified purchaser",
                                  style: TextStyle(color: Colors.grey))),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                                "Loreum is simply ......\n ..................\n ..............."),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 100,
                                width: 100,
                                child: Image.asset(
                                    "assets/images/Image Popular Product 1.png"),
                              ),
                              SizedBox(
                                height: 100,
                                width: 100,
                                child: Image.asset(
                                    "assets/images/Image Popular Product 1.png"),
                              ),
                              SizedBox(
                                height: 100,
                                width: 100,
                                child: Image.asset(
                                    "assets/images/Image Popular Product 1.png"),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      "Explore More",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
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
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          'QTY',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          '1',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CartScreen()));
                      },
                      child: const Text("ADD TO CART"),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        minimumSize: const Size.fromHeight(40),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Stack _chooseColors() {
    return Stack(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10)),
        ),
        Positioned(
          top: 5,
          left: 5,
          child: Container(
            width: 30,
            height: 30,
            decoration: const BoxDecoration(
                color: fConformOrderColor, shape: BoxShape.circle),
          ),
        )
      ],
    );
  }
}
