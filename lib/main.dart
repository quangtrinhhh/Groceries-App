import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:groceries_app/src/screens/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            brightness: Brightness.light,
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.white, // Màu nền cho AppBar
              iconTheme: const IconThemeData(color: Colors.black),
              toolbarTextStyle: const TextTheme(
                titleLarge: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0), // Màu sắc cho tiêu đề AppBar
              ).bodyMedium,
              titleTextStyle: const TextTheme(
                titleLarge: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0), // Màu sắc cho tiêu đề AppBar
              ).titleLarge,
            ),
            textTheme: Typography.englishLike2018.apply(
              fontSizeFactor: 1.sp,
              bodyColor: Colors.black, // Màu chữ mặc định
              displayColor: Colors.black, // Màu chữ cho các tiêu đề
            ),
            buttonTheme: const ButtonThemeData(
              buttonColor: Color(0xff53B175), // Màu nền cho nút
              textTheme: ButtonTextTheme.primary, // Màu chữ cho nút
            ),
          ),
          home: const SignUp(),
        );
      },
    );
  }
}
