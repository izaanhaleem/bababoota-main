import 'package:baba_boota/constant/colors.dart';
import 'package:baba_boota/model/list_model.dart';
import 'package:baba_boota/views/Home/component/detail_screen.dart';
import 'package:baba_boota/views/KidsFashion/KidsFashion.dart';
import 'package:baba_boota/views/MensFashion/MensFashion.dart';
import 'package:baba_boota/views/WomensFashion/WomensFashion.dart';
import 'package:baba_boota/widget/widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeIndex = 0;
  bool like = false;
  final List<String> imgList = [
    "https://image.shutterstock.com/image-photo/cheerful-happy-woman-enjoying-shopping-260nw-1417347668.jpg",
    "https://englishperiod.com/wp-content/uploads/2020/10/Shopping-Malls-in-Indore_600x400-1280x720-1.jpg",
    "https://image.shutterstock.com/image-photo/cheerful-happy-woman-enjoying-shopping-260nw-1417347668.jpg",
    "https://englishperiod.com/wp-content/uploads/2020/10/Shopping-Malls-in-Indore_600x400-1280x720-1.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: appBarMain(context)),
        backgroundColor: fBackgroundColor,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
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
                            height: MediaQuery.of(context).size.height * 0.5.h,
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "TOP CATEGORIES",
                      style: TextStyle(
                          fontSize: 13.sp, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "VIEW ALL",
                      style: TextStyle(
                          fontSize: 13.sp,
                          color: Colors.red,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.45.h,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: catagories.length,
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 2.0,
                      mainAxisSpacing: 4.0),
                      itemBuilder: (context, index) => CategoryCard(
                  listModel: catagories[index],
                  press: () {
                    if(index==0){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                              const MensFashion()));
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
                )
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                color: Colors.yellow,
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.70.h,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0, top: 14),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "VIEW ALL",
                          style: TextStyle(
                              fontSize: 13.sp,
                              color: Colors.red,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10),
                      child: Stack(
                        children: [
                          Container(
                            height:
                                MediaQuery.of(context).size.height * 0.070.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.red, width: 1.5),
                              borderRadius: BorderRadius.circular(13),
                              color: Colors.red,
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Text(
                                  "TIME LEFT",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          ClipPath(
                            clipper: ShapeClipper(),
                            child: Container(
                              width: 150.w,
                              height: 45.h,
                              decoration: BoxDecoration(
                                color: Colors.yellow,
                                border:
                                    Border.all(color: Colors.red, width: 1.5),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(13.0),
                                    bottomLeft: Radius.circular(13.0)),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 13.0),
                                  child: Text(
                                    "FLASH SALE",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.5.h,
                      child: ListView.builder(
                          itemCount: catagories.length,
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return SizedBox(
                              width: MediaQuery.of(context).size.width * .38.w,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0.0),
                                    side: const BorderSide(color: Colors.grey)),
                                child: Column(
                                  children: [
                                    Align(
                                        alignment: Alignment.topRight,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              right: 8.0, top: 8.0),
                                          child: InkWell(
                                            onTap: () {
                                              setState(() {
                                                like = !like;
                                              });
                                            },
                                            child: Icon(Icons.favorite,
                                                size: 20.0,
                                                color: (like)
                                                    ? Colors.red
                                                    : Colors.grey),
                                          ),
                                        )),
                                    Expanded(
                                      child: Image.asset(
                                        catagories[index].image!,
                                        fit: BoxFit.cover,
                                        alignment: Alignment.center,
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Stack(
                                          children: [
                                            SizedBox(
                                              height: 20.h,
                                              width: 115.w,
                                              child: CustomPaint(
                                                painter: PriceTagPaint(),
                                                child: Center(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 16.0),
                                                    child: Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Text(
                                                        list[index].sale,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            fontSize: 10.sp,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 50.w,
                                              height: 20.h,
                                              color: Colors.black,
                                              child: Center(
                                                child: Text(
                                                  "SALE",
                                                  style: TextStyle(
                                                      fontSize: 10.sp,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                          width: 65.w,
                                          child: CustomPaint(
                                            painter: ExpressPaint(),
                                            child: Center(
                                              child: Text(
                                                list[index].express,
                                                style: TextStyle(
                                                    fontSize: 10.sp,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: Text(
                                            list[index].newOrOld,
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                color: Colors.red),
                                          ),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.33.w,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Text(
                                              list[index].model,
                                              overflow: TextOverflow.ellipsis,
                                              softWrap: false,
                                              maxLines: 2,
                                              style: TextStyle(
                                                  fontSize: 11.sp,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: Row(
                                            children: [
                                              Text(
                                                list[index].currentPrice,
                                                style: TextStyle(
                                                    color: Colors.red,
                                                    fontSize: 12.sp,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                width: 3.w,
                                              ),
                                              Text(
                                                list[index].oldPrice,
                                                style: TextStyle(
                                                  fontSize: 10.sp,
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: Text(
                                            list[index].rating,
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                color: Colors.green),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 4.h,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: LinearPercentIndicator(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.3,
                                            lineHeight: 10.0,
                                            percent: 0.3,
                                            center: Text(
                                              list[index].soldOutOrNot,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 10.sp,
                                                color: Colors.black,
                                              ),
                                            ),
                                            backgroundColor: Colors.grey,
                                            progressColor: Colors.yellow,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15.h,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    )
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.98.h,
                color: fTopSellingColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "TOP SELLINGS",
                            style: TextStyle(
                                fontSize: 13.sp, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "VIEW ALL",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.80.h,
                          child: TopSelling(context)
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.98.h,
                color: fTrandingColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "TRENDING DEALS",
                            style: TextStyle(
                                fontSize: 13.sp, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "VIEW ALL",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.80.h,
                            child: TrendingDeals(context)
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.52.h,
                child: Column(
                  children: [
                       Text(
                        "RECOMMENDED",
                        textAlign: TextAlign.start,
                        style:
                            TextStyle(fontSize: 13.sp, fontWeight: FontWeight.bold),
                      ),
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
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.5.h,
                  child: Recommended(context)
                ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "BRAND WITH US",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1.h,
                child: ListView.builder(
                    itemCount: list.length,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        width: MediaQuery.of(context).size.width * .2.w,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              side: const BorderSide(color: Colors.grey)),
                          child: Image.network(list[index].brands),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
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

class RecommendedProducts extends StatefulWidget {
  final ListModel listModel;
  final VoidCallback press;

  const RecommendedProducts(
      {Key? key, required this.listModel, required this.press})
      : super(key: key);

  @override
  State<RecommendedProducts> createState() => _RecommendedProductsState();
}

class _RecommendedProductsState extends State<RecommendedProducts> {
  bool like = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * .38.w,
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
              side: const BorderSide(color: Colors.grey)),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          like = !like;
                        });
                      },
                      child: Icon(Icons.favorite,
                          size: 20.0, color: (like) ? Colors.red : Colors.grey),
                    ),
                  )),
              SizedBox(
                height: 8.0.h,
              ),
              Expanded(
                child: Image.asset(
                  widget.listModel.image!,
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        height: 20.h,
                        width: 115.w,
                        child: CustomPaint(
                          painter: PriceTagPaint(),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 16.0),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  widget.listModel.sale!,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 50.w,
                        height: 20.h,
                        color: Colors.black,
                        child: Center(
                          child: Text(
                            "SALE",
                            style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                    width: 65.w,
                    child: CustomPaint(
                      painter: ExpressPaint(),
                      child: Center(
                        child: Text(
                          widget.listModel.express!,
                          style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      widget.listModel.newOrOld!,
                      style: TextStyle(fontSize: 12.sp, color: Colors.red),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.33.w,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        widget.listModel.model!,
                        overflow: TextOverflow.ellipsis,
                        softWrap: false,
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: 11.sp, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        Text(
                          widget.listModel.currentPrice!,
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Text(
                          widget.listModel.oldPrice!,
                          style: TextStyle(
                            fontSize: 10.sp,
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
                      widget.listModel.rating!,
                      style: TextStyle(fontSize: 12.sp, color: Colors.green),
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
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
            Text(listModel.name!)
          ],
        ),
      ),
    );
  }
}