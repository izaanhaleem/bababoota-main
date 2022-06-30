import 'package:baba_boota/constant/colors.dart';
import 'package:baba_boota/model/list_model.dart';
import 'package:baba_boota/views/Cart/cart_screen.dart';
import 'package:baba_boota/views/Categories/sub_categories.dart';
import 'package:baba_boota/views/Home/component/detail_screen.dart';
import 'package:baba_boota/views/Home/component/icon_btn_with_counter.dart';
import 'package:baba_boota/views/Home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';
//textFormFieldsInputDecoration
InputDecoration textFormFieldsInputDecoration(String labelText) {
  return InputDecoration(
    labelText: labelText,
    labelStyle: const TextStyle(color: Colors.grey),
    focusedBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
    ),
    enabledBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
    ),
  );
}

//ButtonStyle
ButtonStyle simpleButton(Color color) {
  return ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(color),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)))));
}
Widget TopCatagories(BuildContext context){
  return GridView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: catagories.length,
    physics: const BouncingScrollPhysics(),
    shrinkWrap: true,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 5.0),
    itemBuilder: (context, index) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 60.w,
            height: 50.h,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.yellow),
            child: Center(child: Image.asset(catagories[index].image)),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            catagories[index].name,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 12.sp, fontWeight: FontWeight.bold),
          ),
        ],
      );
    },
  );
}
Widget Wardrobes(BuildContext context){
  return GridView.builder(
    scrollDirection: Axis.vertical,
    itemCount: wardrobes.length,
    physics: const BouncingScrollPhysics(),
    shrinkWrap: true,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1/1.5,
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 5.0),
    itemBuilder: (context, index) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.20.h,
            width:MediaQuery.of(context).size.width * 0.50.w,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.yellow),
            child: Center(child: Image.asset(wardrobes[index].image)),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            wardrobes[index].categories,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 12.sp, fontWeight: FontWeight.bold),
          ),
        ],
      );
    },
  );
}
Widget Brands(BuildContext context){
  return GridView.builder(
    scrollDirection: Axis.vertical,
    itemCount: brands.length,
    physics: const BouncingScrollPhysics(),
    shrinkWrap: true,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1/1.5,
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 5.0),
    itemBuilder: (context, index) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.20.h,
            width:MediaQuery.of(context).size.width * 0.50.w,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.yellow),
            child: Center(child: Image.asset(brands[index].image)),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            brands[index].categories,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 12.sp, fontWeight: FontWeight.bold),
          ),
        ],
      );
    },
  );
}
Widget TopSelling(BuildContext context){
  return GridView.count(
    physics: const NeverScrollableScrollPhysics(),
    crossAxisCount: 2,
    crossAxisSpacing: 10,
    mainAxisSpacing: 10,
    children: List.generate(
      4,
          (index) => Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border:
          Border.all(color: Colors.red, width: 2.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            // mainAxisAlignment:
            //     MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 4.w,
                height: double.maxFinite,
                decoration: const BoxDecoration(
                  color: fTopSellingColor,
                  borderRadius: BorderRadius.only(
                    topLeft:
                    Radius.elliptical(20.0, 20.0),
                    bottomLeft:
                    Radius.elliptical(20.0, 20.0),
                  ),
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    Text(
                      list[index].topSellings,
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      list[index].peopleExpression,
                      style: const TextStyle(
                          color: Colors.grey),
                    ),
                    Text(
                      list[index].currentPrice,
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w700),
                    ),
                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment
                          .spaceBetween,
                      children: [
                        SizedBox(
                          height: 18.h,
                          width: 80.w,
                          child: CustomPaint(
                            painter: PriceTagPaint(),
                            child: Center(
                              child: Padding(
                                padding:
                                const EdgeInsets
                                    .only(
                                    right: 8.0),
                                child: Text(
                                  list[index].sale,
                                  style: TextStyle(
                                      fontSize: 13.sp,
                                      fontWeight:
                                      FontWeight
                                          .bold,
                                      color:
                                      Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
Widget TrendingDeals(BuildContext context){
  return GridView.count(
    physics: const NeverScrollableScrollPhysics(),
    crossAxisCount: 2,
    crossAxisSpacing: 2,
    mainAxisSpacing: 15,
    children: List.generate(
      4,
          (index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius:
              BorderRadius.all(Radius.circular(15))),
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.elliptical(15.0, 15.0),
                  bottomLeft: Radius.circular(15.0),
                  topLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.red,
                    offset: Offset(2.0, 2.0),
                  )
                ]),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    list[index].topSellings,
                    style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    list[index].sale,
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w700),
                  ),
                  Image.asset(
                    list[index].image,
                    width: 70,
                    height: 70,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
Widget Recommended(BuildContext context){
  return ListView.builder(
    itemCount: list.length,
    physics: const BouncingScrollPhysics(),
    scrollDirection: Axis.horizontal,
    itemBuilder: (context, index) => RecommendedProducts(
      listModel: list[index],
      press: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailScreen(
            listModel: list[index],
          ),
        ),
      ),
    ),
  );
}
Widget JoinTopCatagories(BuildContext context){
  return ListView.separated(
    physics: const BouncingScrollPhysics(),
    separatorBuilder: (context, index) {
      return Container(
        height: 2,
      );
    },
    itemCount: Catagories.length,
    itemBuilder: (context, index) => Container(
      color: Colors.green,
      child: ListTile(
        title: Text(
          Catagories[index].categories,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 12, fontWeight: FontWeight.w600),
        ),
        onTap: ()=>Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SubCategory(
              listModel: list[index],
            ),
          ),
        ),
      ),
    ),
  );
}
//appBarStyle
Widget appBarMain(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: Image.asset(
        "assets/images/bblogo.PNG",
        height: 30,
      ),
      title: SizedBox(
        width: MediaQuery.of(context).size.width * 0.65.w,
        child: TextFormField(
          keyboardType: TextInputType.text,
          cursorColor: Colors.grey,
          autocorrect: false,
          decoration: InputDecoration(
            isDense: true,
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
            prefixIconConstraints:
                const BoxConstraints(minWidth: 30, minHeight: 0),
            hintText: "What are you looking for?",
            hintStyle: TextStyle(fontSize: 12.sp),
            contentPadding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
          ),
        ),
      ),
      centerTitle: true,
      actions: [
        IconBtnWithCounter(
            icon: Icons.shopping_cart_outlined,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CartScreen()));
            })
      ],
    ),
  );
}

//subAppBarStyle
Widget subAppBarMain(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: AppBar(
      iconTheme: const IconThemeData(
        color: Colors.black, //change your color here
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      title: SizedBox(
        width: MediaQuery.of(context).size.width * 0.65.w,
        child: TextFormField(
          keyboardType: TextInputType.text,
          cursorColor: Colors.grey,
          autocorrect: false,
          decoration: InputDecoration(
            isDense: true,
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
            prefixIconConstraints:
                const BoxConstraints(minWidth: 30, minHeight: 0),
            hintText: "What are you looking for?",
            hintStyle: TextStyle(fontSize: 12.sp),
            contentPadding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
          ),
        ),
      ),
      centerTitle: true,
      actions: [
        IconBtnWithCounter(
            icon: Icons.shopping_cart_outlined,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CartScreen()));
            })
      ],
    ),
  );
}

//OTP Box Style
OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Colors.white));
}

class ShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
      ..lineTo(0.0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width - 40, 0.0)
      ..close();
  }

  @override
  bool shouldReclip(ShapeClipper oldClipper) => false;
}

class PriceTagPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.red
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill;

    Path path = Path();

    path
      ..lineTo(size.width * .9, 0)
      ..lineTo(size.width, size.height / 2)
      ..lineTo(size.width * .9, size.height)
      ..lineTo(0, size.height)
      ..lineTo(0, 0)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class ExpressPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.yellow
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill;

    Path path = Path();

    path
      ..lineTo(size.width * .8, 0)
      ..lineTo(size.width, size.height / 2)
      ..lineTo(size.width * .8, size.height)
      ..lineTo(0, size.height)
      ..lineTo(0, 0)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
