import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [ 
            Positioned(
              top: -180.h,
              left: 80.w,
              right: 0,
              child: Transform.rotate(
                angle: 220 * 3.14 / 180,
                child: Image.asset(
                  "assets/images/sign_in/background.png",
                  width: 927.35.w,
                  height: 618.31.h,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 24.53.w, right: 24.53.w, bottom: 90.42.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(
                      "Nhận hàng\ncủa bạn với nectar",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 26.sp,
                      ),
                    ),
                  ),
                  30.61.verticalSpace,
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.only(bottom: 15.h),
                      decoration: const BoxDecoration(
                          border: Border(
                        bottom: BorderSide(
                          color: Color(0xFFE2E2E2),
                          width: 1,
                        ),
                      )),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.phone_iphone,
                            size: 26,
                          ),
                          12.02.horizontalSpace,
                          Text(
                            "+84",
                            style: TextStyle(fontSize: 18.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                  40.verticalSpace,
                  Text(
                    "Hoặc kết nối với mạng xã hội",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: const Color(0xFF828282),
                    ),
                  ),
                  37.verticalSpace,
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.only(
                        top: 24.5.h,
                        bottom: 24.5.h,
                        left: 35.91.w,
                      ),
                      alignment: AlignmentDirectional.center,
                      decoration: BoxDecoration(
                        color: const Color(0xFF5383EC),
                        borderRadius: BorderRadius.circular(19.r),
                      ),
                      width: double.infinity,
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/sign_in/google_icon.png",
                            width: 22.w,
                            height: 25.h,
                            fit: BoxFit.cover,
                          ),
                          42.63.horizontalSpace,
                          Text(
                            "Tiếp tục với Google",
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  20.verticalSpace,
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.only(
                        top: 24.5.h,
                        bottom: 24.5.h,
                        left: 35.91.w,
                      ),
                      alignment: AlignmentDirectional.center,
                      decoration: BoxDecoration(
                        color: const Color(0xFF4A66AC),
                        borderRadius: BorderRadius.circular(19.r),
                      ),
                      width: double.infinity,
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/sign_in/facebook_icon.png",
                            width: 11.71.w,
                            height: 24.06.h,
                            fit: BoxFit.cover,
                          ),
                          42.63.horizontalSpace,
                          Text(
                            "Tiếp tục với Facebook",
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
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
}
