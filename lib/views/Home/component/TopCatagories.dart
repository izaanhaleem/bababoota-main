/*
// ignore_for_file: file_names

import 'package:baba_boota/model/list_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class TopCatagories extends StatefulWidget {
  const TopCatagories({Key? key}) : super(key: key);

  @override
  _TopCatagoriesState createState() => _TopCatagoriesState();
}

class _TopCatagoriesState extends State<TopCatagories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 5,
      child: GridView.builder(
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
      ),
    );
  }
}
*/
