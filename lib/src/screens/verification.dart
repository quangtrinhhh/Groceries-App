import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app/src/constants/colors.dart';
import 'package:groceries_app/src/screens/select_location.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  String codeValue = "";
  final double _bottomPosition1 = 30.3.h;
  final double _bottomPosition2 = 49.3.h;
  @override
  Widget build(BuildContext context) {
    // Lấy chiều cao bàn phím
    double keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/backgroud_login.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 25.0,
              sigmaY: 25.0,
            ),
            child: Container(
              color: AppColors.backgroundColor.withOpacity(0.6),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    iconTheme: const IconThemeData(color: Colors.black),
                    leading: IconButton(
                      icon: const Icon(Icons.arrow_back_ios_rounded),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 25.w, vertical: 45.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nhập mã gồm 4 chữ số của bạn",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 26.sp,
                        ),
                      ),
                      27.verticalSpace,
                      Text(
                        "Mã số",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Color(0xFF7C7C7C),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border(
                          bottom: BorderSide(
                            color: Color(0xFFE2E2E2),
                            width: 1,
                          ),
                        )),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(4)
                          ],
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 5),
                            border: InputBorder.none, // Loại bỏ border
                            hintText: '- - - -',
                          ),
                          style: TextStyle(fontSize: 18.sp),
                          onChanged: (value) {
                            setState(() {
                              codeValue = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 100),
            bottom: keyboardHeight + _bottomPosition1,
            right: 25.w,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SelectLocation(),
                    ));
              },
              child: Container(
                width: 57,
                height: 57,
                decoration: BoxDecoration(
                  color: codeValue.isEmpty
                      ? Color.fromARGB(255, 81, 116, 94)
                      : AppColors.greenColor,
                  borderRadius: BorderRadius.all(Radius.circular(500)),
                ),
                child: Icon(
                  Icons.keyboard_arrow_right,
                  size: 30.sp,
                  color: AppColors.backgroundColor,
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 100),
            bottom: keyboardHeight + _bottomPosition2,
            left: 25.w,
            child: GestureDetector(
              onTap: () {},
              child: Text(
                "Gửi lại mã",
                style: TextStyle(color: AppColors.greenColor, fontSize: 18.sp),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
