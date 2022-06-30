// ignore_for_file: file_names, prefer_const_constructors

import 'package:baba_boota/constant/colors.dart';
import 'package:baba_boota/model/list_model.dart';
import 'package:baba_boota/views/KidsFashion/KidsFashion.dart';
import 'package:baba_boota/views/WomensFashion/WomensFashion.dart';
import 'package:baba_boota/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class MensShopCatagory extends StatefulWidget {
  const MensShopCatagory({Key? key}) : super(key: key);

  @override
  _MensShopCatagoryState createState() => _MensShopCatagoryState();
}

class _MensShopCatagoryState extends State<MensShopCatagory> {
  List<String> imgList = [
    "https://image.shutterstock.com/image-photo/cheerful-happy-woman-enjoying-shopping-260nw-1417347668.jpg",
    "https://englishperiod.com/wp-content/uploads/2020/10/Shopping-Malls-in-Indore_600x400-1280x720-1.jpg",
    "https://image.shutterstock.com/image-photo/cheerful-happy-woman-enjoying-shopping-260nw-1417347668.jpg",
    "https://englishperiod.com/wp-content/uploads/2020/10/Shopping-Malls-in-Indore_600x400-1280x720-1.jpg",
  ];
  bool _collapse = false;
  bool _collapse1 = false;
  bool _collapse2 = false;
  bool _collapse3 = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: fBackgroundColor,
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: appBarMain(context)),
        body: Column(
          children: [
            // Middle expanded
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: ListView(
                        physics: const BouncingScrollPhysics(),
                        children: [
                          const Text(
                            "Shop by category",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 15),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          // TopCatagories(context)
                          GridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              childAspectRatio: MediaQuery.of(context).size.width /
                                  (MediaQuery.of(context).size.height * 1.5),
                              crossAxisSpacing: 5,
                              mainAxisSpacing: 15,),
                            itemCount: mensshopcatagory.length,
                            itemBuilder: (context, index) => CategoryCard(
                                listModel: mensshopcatagory[index],
                                press: () {
                                  if(index==0){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                            const MensShopCatagory()));
                                  }
                                  if(index==1){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                WomensFashion()));
                                  }
                                  if(index==2){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                            const KidsFashion()));
                                  }
                                }
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.network(
                              "https://static.toiimg.com/thumb/msid-84737243,width-800,resizemode-4,imgsize-32189/share.jpg",
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: 100,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Top Brands",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 20),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          GridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              childAspectRatio: MediaQuery.of(context).size.width /
                                  (MediaQuery.of(context).size.height * 1.0),
                              crossAxisSpacing: 5,
                              mainAxisSpacing: 15,),
                            itemCount: brands.length,
                            itemBuilder: (context, index) => CategoryCard(
                                listModel: brands[index],
                                press: () {
                                  if(index==0){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                            const MensShopCatagory()));
                                  }
                                  if(index==1){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                WomensFashion()));
                                  }
                                  if(index==2){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                            const KidsFashion()));
                                  }
                                }
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(
                                  color: Colors.amber,
                                  width: 1.0, // Underline thickness
                                ))
                            ),
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () => setState(() {
                                    _collapse = !_collapse;
                                  }),
                                  child:Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Expanded(
                                            child: Text(
                                              'Clothing',
                                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                            )
                                        ),
                                        Icon(_collapse
                                            ? Icons.keyboard_arrow_up
                                            : Icons.keyboard_arrow_down),
                                      ],
                                    ),
                                  ),
                                ),
                                AnimatedContainer(
                                  duration: Duration(milliseconds: 500),
                                  height: _collapse ? width : 0,
                                  child:   GridView.builder(
                                    physics: const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      childAspectRatio: MediaQuery.of(context).size.width /
                                          (MediaQuery.of(context).size.height * 1.0),
                                      crossAxisSpacing: 5,
                                      mainAxisSpacing: 15,),
                                    itemCount: imgList.length,
                                    itemBuilder: (context, index) => CategoryCard(
                                        listModel: BootaTopPicks[index],
                                        press: () {
                                          if(index==0){
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                    const MensShopCatagory()));
                                          }
                                          if(index==1){
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                    const WomensFashion()));
                                          }
                                          if(index==2){
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                    const KidsFashion()));
                                          }
                                        }
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(
                                  color: Colors.amber,
                                  width: 1.0, // Underline thickness
                                ))
                            ),
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () => setState(() {
                                    _collapse1 = !_collapse1;
                                  }),
                                  child:Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Expanded(
                                            child: Text(
                                              'Footwear',
                                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                            )
                                        ),
                                        Icon(_collapse1
                                            ? Icons.keyboard_arrow_up
                                            : Icons.keyboard_arrow_down),
                                      ],
                                    ),
                                  ),
                                ),
                                AnimatedContainer(
                                  duration: Duration(milliseconds: 500),
                                  height: _collapse1 ? width : 0,
                                  child:   GridView.builder(
                                    physics: const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      childAspectRatio: MediaQuery.of(context).size.width /
                                          (MediaQuery.of(context).size.height * 1.0),
                                      crossAxisSpacing: 5,
                                      mainAxisSpacing: 15,),
                                    itemCount: imgList.length,
                                    itemBuilder: (context, index) => CategoryCard(
                                        listModel: BootaTopPicks[index],
                                        press: () {
                                          if(index==0){
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                    const MensShopCatagory()));
                                          }
                                          if(index==1){
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                    const WomensFashion()));
                                          }
                                          if(index==2){
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                    const KidsFashion()));
                                          }
                                        }
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(
                                  color: Colors.amber,
                                  width: 1.0, // Underline thickness
                                ))
                            ),
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () => setState(() {
                                    _collapse2 = !_collapse2;
                                  }),
                                  child:Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Expanded(
                                            child: Text(
                                              'Sportswear',
                                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                            )
                                        ),
                                        Icon(_collapse2
                                            ? Icons.keyboard_arrow_up
                                            : Icons.keyboard_arrow_down),
                                      ],
                                    ),
                                  ),
                                ),
                                AnimatedContainer(
                                  duration: Duration(milliseconds: 500),
                                  height: _collapse2 ? width : 0,
                                  child:   GridView.builder(
                                    physics: const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      childAspectRatio: MediaQuery.of(context).size.width /
                                          (MediaQuery.of(context).size.height * 1.0),
                                      crossAxisSpacing: 5,
                                      mainAxisSpacing: 15,),
                                    itemCount: imgList.length,
                                    itemBuilder: (context, index) => CategoryCard(
                                        listModel: BootaTopPicks[index],
                                        press: () {
                                          if(index==0){
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                    const MensShopCatagory()));
                                          }
                                          if(index==1){
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                    const WomensFashion()));
                                          }
                                          if(index==2){
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                    const KidsFashion()));
                                          }
                                        }
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(
                                  color: Colors.amber,
                                  width: 1.0, // Underline thickness
                                ))
                            ),
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () => setState(() {
                                    _collapse3 = !_collapse3;
                                  }),
                                  child:Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Expanded(
                                            child: Text(
                                              'Bags & Wallets',
                                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                            )
                                        ),
                                        Icon(_collapse3
                                            ? Icons.keyboard_arrow_up
                                            : Icons.keyboard_arrow_down),
                                      ],
                                    ),
                                  ),
                                ),
                                AnimatedContainer(
                                  duration: Duration(milliseconds: 500),

                                  height: _collapse3 ? width : 0,
                                  child:   GridView.builder(
                                    physics: const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      childAspectRatio: MediaQuery.of(context).size.width /
                                          (MediaQuery.of(context).size.height * 1.0),
                                      crossAxisSpacing: 5,
                                      mainAxisSpacing: 15,),
                                    itemCount: imgList.length,
                                    itemBuilder: (context, index) => CategoryCard(
                                        listModel: BootaTopPicks[index],
                                        press: () {
                                          if(index==0){
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                    const MensShopCatagory()));
                                          }
                                          if(index==1){
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                    const WomensFashion()));
                                          }
                                          if(index==2){
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                    const KidsFashion()));
                                          }
                                        }
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

/*  Widget buildContext(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => setState(() {
            _collapse = !_collapse;
          }),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                    child: Text(
                      'Category',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )),
                Icon(_collapse
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down),
              ],
            ),
          ),
        ),
        AnimatedContainer(
          duration: Duration(milliseconds: 500),
          width: MainPage.width,
          height: _collapse ? MainPage.width : 0,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemCount: imgList.length,
            itemBuilder: (context, index) => CategoryCard(
                listModel: BootaTopPicks[index],
                press: () {
                  if(index==0){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                            const MensShopCatagory()));
                  }
                  if(index==1){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                            const WomensFashion()));
                  }
                  if(index==2){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                            const KidsFashion()));
                  }
                }
            ),
          ),
        ),
      ],
    );
  }*/
}

  class CategoryCard extends StatelessWidget {
  final ListModel listModel;
  final VoidCallback press;

  const CategoryCard({Key? key, required this.listModel, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
          return GestureDetector(
          onTap: press,
          child: Container(
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: Colors.white),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Image.asset(listModel.image!),
          Text(listModel.categories!)
  ],
  ),
  ),
  );
  }
  }
