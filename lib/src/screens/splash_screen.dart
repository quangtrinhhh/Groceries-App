// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app/src/constants/colors.dart';
import 'package:groceries_app/src/screens/onbording.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _assetsPreloaded = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      _preloadAssets();
    });
  }

  Future<void> _preloadAssets() async {
    // Tải trước các ảnh từ assets
    await precacheImage(
      const AssetImage('assets/images/onbording/background.png'),
      context,
    );
    await precacheImage(
      const AssetImage("assets/images/sign_in/background.png"),
      context,
    );
    await precacheImage(
      const AssetImage("assets/images/backgroud_login.png"),
      context,
    );

    // Đánh dấu rằng các assets đã được tải xong
    setState(() {
      _assetsPreloaded = true;
    });

    // Đợi 1 giây để hiển thị Splash Screen trước khi chuyển hướng
    await Future.delayed(const Duration(seconds: 1));

    // Chuyển hướng đến màn hình Onbording khi các assets đã sẵn sàng
    if (_assetsPreloaded) {
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const Onbording(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // Gọi build() để cập nhật các thay đổi từ _assetsPreloaded và các phần tử kế thừa
    return Scaffold(
      backgroundColor: AppColors.greenColor,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 5),
              child: Image.asset(
                "assets/images/logo_splash.png",
                width: 54.7.w,
                height: 63.61.h,
              ),
            ),
            const SizedBox(width: 15),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/splash_screen/tittle_splash_screen.png",
                  width: 194.35.w,
                  height: 46.15.h,
                ),
                const SizedBox(height: 10),
                Text(
                  "Tạp hoá trực tuyến",
                  style: TextStyle(
                    fontSize: 14.sp,
                    letterSpacing: 4.sp,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
