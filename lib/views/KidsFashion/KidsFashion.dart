// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:baba_boota/constant/colors.dart';
import 'package:baba_boota/views/MensFashion/MensFashion.dart';
import 'package:baba_boota/views/WomensFashion/WomensFashion.dart';
import 'package:baba_boota/widget/widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class KidsFashion extends StatefulWidget {
  const KidsFashion({Key? key}) : super(key: key);

  @override
  _KidsFashionState createState() => _KidsFashionState();
}

class _KidsFashionState extends State<KidsFashion> {
  List<String> countries = ['USA', 'India'];
  int activeIndex = 0;
  bool like = false;
  final List<String> imgList = [
    "assets/images/ramzan.jpg",
    "assets/images/kidsfashion1.jpg",
    "assets/images/kidsfashion2.jpg",
    "assets/images/kidsfashion3.jpg",
  ];
  List<String> provinces = [];
  String? selectedCountry;
  String? selectedProvince;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF4F4F4),
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: appBarMain(context)),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox( // Horizontal ListView
                  height: 90,
                  child: ListView.builder(
                    itemCount: 1,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 1500,
                        alignment: Alignment.center,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Card(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 8.0),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Text(
                                          'Size',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14.0),
                                        ),
                                      ),
                                      Icon(Icons.keyboard_arrow_down)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Card(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 8.0),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Text(
                                          'Price',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14.0),
                                        ),
                                      ),
                                      Icon(Icons.keyboard_arrow_down)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Card(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 8.0),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Text(
                                          'Colour',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14.0),
                                        ),
                                      ),
                                      Icon(Icons.keyboard_arrow_down)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Card(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 8.0),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Text(
                                          'Size:L',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14.0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Card(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 8.0),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Text(
                                          'Size:XL',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14.0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Card(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 8.0),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Text(
                                          'Size:M',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14.0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Card(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 8.0),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Text(
                                          'Men',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14.0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Card(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 8.0),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Text(
                                          'Women',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14.0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Card(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 8.0),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Text(
                                          'Bags&Luggage',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14.0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Card(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 8.0),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Text(
                                          'Girls',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14.0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Card(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 8.0),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Text(
                                          'Boys',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14.0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Card(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 8.0),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Text(
                                          'TOMMY HILFIGER',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14.0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FlatButton(
                          color: Colors.black,
                          onPressed: () {
                            Navigator.pushReplacement(
                                context, MaterialPageRoute(
                                builder: (context) =>
                                    MensFashion(
                                    )));
                          },
                          child: Text("Men's",
                            style: TextStyle(color: Colors.white),)
                      ),
                      SizedBox(width: 5,),
                      FlatButton(
                          color: Colors.black,
                          onPressed: () {
                            Navigator.pushReplacement(
                                context, MaterialPageRoute(
                                builder: (context) => WomensFashion()));
                          },
                          child: Text(
                            "Women's", style: TextStyle(color: Colors.white),)
                      ),
                      SizedBox(width: 5.0,),
                      FlatButton(
                          color: Colors.black,
                          onPressed: () {
                            Navigator.pushReplacement(
                                context, MaterialPageRoute(
                                builder: (context) => KidsFashion()));
                          },
                          child: Text(
                            "Kid's", style: TextStyle(color: Colors.white),)
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CarouselSlider.builder(
                          options: CarouselOptions(
                              height: MediaQuery
                                  .of(context)
                                  .size
                                  .height * 0.5.h,
                              autoPlay: true,
                              viewportFraction: 1,
                              onPageChanged: (index, reason) =>
                                  setState(() => activeIndex = index)),
                          itemCount: imgList.length,
                          itemBuilder: (context, index, realIndex) {
                            final urlImages = imgList[index];
                            return buildImage(urlImages, index);
                          },
                        ),
                        Positioned(
                          bottom: 5.0,
                          child: buildIndicator(),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 1.3,
                  color: fTopSellingColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 20.0),
                    child: Column(
                      children: [
                        Text(
                          "Shop By Gender",
                          style: TextStyle(
                            fontSize: 25.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrangeAccent,),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Wardrobes(context),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Text(
                            "BIG DEALS ON BIG BRANDS",
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepOrangeAccent,),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Brands(context)
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Column(
                  children: [
                    Text(
                      "New in: Spring/Summer 2022",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CarouselSlider.builder(
                              options: CarouselOptions(
                                  height: MediaQuery
                                      .of(context)
                                      .size
                                      .height * 0.5.h,
                                  autoPlay: true,
                                  viewportFraction: 1,
                                  onPageChanged: (index, reason) =>
                                      setState(() => activeIndex = index)),
                              itemCount: imgList.length,
                              itemBuilder: (context, index, realIndex) {
                                final urlImages = imgList[index];
                                return buildImage(urlImages, index);
                              },
                            ),
                            Positioned(
                              bottom: 5.0,
                              child: buildIndicator(),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h,),
                Container(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.52.h,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                          "https://img.freepik.com/free-vector/promotion-sale-labels-best-offers_206725-127.jpg?size=626&ext=jpg",
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h,),
                Container(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.52.h,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          "assets/images/ramzan.jpg",
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
          ,),
      ),
    );
  }
  buildItem(BuildContext context, int index) {
    return Column(
      children: [
        Card(
          child: DropdownButton<String>(
            hint: Text('Country'),
            value: selectedCountry,
            isExpanded: true,
            items: countries.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (country) {
              if (country == 'USA') {
              }
              setState(() {
                selectedProvince = null;
                selectedCountry = country;
              });
            },
          ),

        ),
      ],
    );
  }
  Widget buildImage(String urlImage, int index) => SizedBox(
    width: double.infinity,
    child: Image.network(urlImage, fit: BoxFit.cover),
  );

  Widget buildIndicator() => AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: imgList.length,
      effect: const ExpandingDotsEffect(
          dotWidth: 8,
          dotHeight: 8,
          spacing: 5.0,
          dotColor: Colors.white,
          activeDotColor: Colors.red));
}