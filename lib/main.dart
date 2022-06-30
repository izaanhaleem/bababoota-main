
import 'package:baba_boota/views/MensFashion/Mencatagory.dart';
import 'package:baba_boota/widget/botom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: () => MaterialApp(
          debugShowCheckedModeBanner: false,
          useInheritedMediaQuery: true,
          // theme: ThemeData(appBarTheme: const AppBarTheme()),
          builder: (context, widget) {
            ScreenUtil.setContext(context);
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: widget!,
            );
          },
          home: BottomNavBar()),
    );
  }
}
