import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app/src/screens/sign_in.dart';

class Onbording extends StatefulWidget {
  const Onbording({super.key});

  @override
  State<Onbording> createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/onbording/background.png",
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                    top: 31.22.h, bottom: 90.84.h, left: 30.5.w, right: 30.5.w),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/logo_white.png",
                      width: 48.47.w,
                      height: 56.36.h,
                    ),
                    35.66.verticalSpace,
                    Text(
                      "Chào mừng\nđến cửa hàng!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 48.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    10.verticalSpace,
                    Text(
                      "Nhận hàng tạp hóa của bạn chỉ trong một giờ",
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    40.verticalSpace,
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    const SignIn(),
                            transitionsBuilder: (context, animation,
                                secondaryAnimation, child) {
                              var begin = const Offset(0.0, 1.0);
                              var end = Offset.zero;
                              var curve = Curves.ease;

                              var tween = Tween(begin: begin, end: end)
                                  .chain(CurveTween(curve: curve));

                              return SlideTransition(
                                position: animation.drive(tween),
                                child: child,
                              );
                            },
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 24.5.h),
                        alignment: AlignmentDirectional.center,
                        decoration: BoxDecoration(
                          color: const Color(0xFF53B175),
                          borderRadius: BorderRadius.circular(19.r),
                        ),
                        width: double.infinity,
                        child: Text(
                          "Bắt đầu",
                          style: TextStyle(
                            fontSize: 20.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
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
  }
}
