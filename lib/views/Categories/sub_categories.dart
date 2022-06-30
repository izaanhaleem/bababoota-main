import 'package:baba_boota/constant/colors.dart';
import 'package:baba_boota/model/list_model.dart';
import 'package:baba_boota/widget/widget.dart';
import 'package:flutter/material.dart';

class SubCategory extends StatefulWidget {
  final ListModel listModel;

  const SubCategory({Key? key, required this.listModel}) : super(key: key);

  @override
  _SubCategoryState createState() => _SubCategoryState();
}

class _SubCategoryState extends State<SubCategory> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: fBackgroundColor,
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: subAppBarMain(context)),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13.0, vertical: 10.0),
          child: ListView(
            children: [
              Row(
                children: [
                  const Text(
                    "SHOP BY BRANDS",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                  ),
                  const Spacer(),
                  buildCheckBox()
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
                child: ListView.builder(
                    itemCount: list.length,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        width: MediaQuery.of(context).size.width * .25,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            list[index].image,
                          ),
                        ),
                      );
                    }),
              ),
              const SizedBox(height: 10.0),
              GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5,
                      childAspectRatio: MediaQuery.of(context).size.width /
                          (MediaQuery.of(context).size.height / 1.5),
                      mainAxisSpacing: 3),
                  itemCount: list.length,
                  itemBuilder: (context, int index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            list[index].image,
                            width: 80,
                            height: 80,
                            alignment: Alignment.center,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  SizedBox(
                                    height: 25,
                                    width: 135,
                                    child: CustomPaint(
                                      painter: PriceTagPaint(),
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              right: 20.0),
                                          child: Align(
                                            alignment: Alignment.centerRight,
                                            child: Text(
                                              list[index].sale,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 50,
                                    height: 25,
                                    color: Colors.black,
                                    child: const Center(
                                      child: Text(
                                        "SALE",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 25,
                                width: 80,
                                child: CustomPaint(
                                  painter: ExpressPaint(),
                                  child: Center(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(right: 6.0),
                                      child: Text(
                                        list[index].express,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  list[index].newOrOld,
                                  style: const TextStyle(color: Colors.red),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.33,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    list[index].model,
                                    overflow: TextOverflow.ellipsis,
                                    softWrap: false,
                                    maxLines: 2,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Row(
                                  children: [
                                    Text(
                                      list[index].currentPrice,
                                      style: const TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      list[index].oldPrice,
                                      style: const TextStyle(
                                        fontSize: 10,
                                        decoration: TextDecoration.lineThrough,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  list[index].rating,
                                  style: const TextStyle(color: Colors.green),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCheckBox() => SizedBox(
        width: 100,
        child: ListTile(
          onTap: () {
            setState(() {
              isChecked = !isChecked;
            });
          },
          title: Checkbox(
              checkColor: Colors.black,
              activeColor: Colors.yellow,
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              }),
          trailing: Transform(
            transform: Matrix4.translationValues(0.0, 0.0, 0.0),
            child: const Text("EXPRESS",
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.red,
                    fontWeight: FontWeight.w600)),
          ),
        ),
      );
}
