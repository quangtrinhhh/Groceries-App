import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: 360.h,
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    top: 40,
                    left: 0,
                    right: 20,
                    child: Image.asset(
                      "assets/images/product_demo.png",
                      width: 330.w,
                      height: 280.h,
                    ),
                  ),
                  BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 18.0, sigmaY: 18.0),
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xFFF2F3F2).withOpacity(0.9),
                                Color(0xFFF2F3F2).withOpacity(0.9),
                                Color.fromARGB(255, 239, 239, 239)
                                    .withOpacity(0.6),
                                Color.fromARGB(255, 239, 239, 239)
                                    .withOpacity(0.6),
                              ]),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30.r),
                              bottomRight: Radius.circular(30.r)),
                          border: Border.all(
                              color: Color.fromARGB(255, 225, 225, 225),
                              width: 0.1)),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    top: 10,
                    right: 0,
                    child: Center(
                      child: Image.asset(
                        "assets/images/product_demo.png",
                        width: 330.w,
                        height: 280.h,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 40.h, left: 5.w, right: 5.w),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.arrow_back_ios_rounded,
                                size: 22.sp,
                                color: Colors.black,
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.ios_share,
                                size: 22.sp,
                                color: Colors.black,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        // 20.verticalSpace,
                        // InputSearchWidget(), // cho lên appbar
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: const [
                Text("Naturel Red Apple"),
                Icon(Icons.favorite_border_outlined),
              ],
            )
          ],
        ),
      ),
    );
  }
}
