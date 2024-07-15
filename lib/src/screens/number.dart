import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app/src/constants/colors.dart';
import 'package:groceries_app/src/screens/verification.dart';

class Number extends StatefulWidget {
  const Number({super.key});

  @override
  State<Number> createState() => _NumberState();
}

class _NumberState extends State<Number> {
  String phoneNumber = "";
  final double _bottomPosition1 = 30.3.h;
  @override
  Widget build(BuildContext context) {
    // Lấy chiều cao bàn phím
    double keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Column(
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
                padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 45.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nhập số điện thoại của bạn",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 26.sp,
                      ),
                    ),
                    27.verticalSpace,
                    Text(
                      "Số điện thoại",
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
                      child: Row(
                        children: [
                          Icon(
                            Icons.phone_iphone,
                            size: 26,
                          ),
                          12.02.horizontalSpace,
                          Text(
                            "+84",
                            style: TextStyle(fontSize: 18.sp),
                          ),
                          Expanded(
                            child: TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 5),
                                border: InputBorder.none, // Loại bỏ border
                                hintText: '', // Không cần label hoặc hint text
                              ),
                              style: TextStyle(fontSize: 18.sp),
                              onChanged: (value) {
                                setState(() {
                                  phoneNumber = value;
                                });
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 100),
            bottom: keyboardHeight + _bottomPosition1,
            right: 25.w,
            child: GestureDetector(
              onTap: () {
                if (phoneNumber.isNotEmpty) {
                  Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        Verification(),
                  ));
                }
              },
              child: Container(
                width: 57,
                height: 57,
                decoration: BoxDecoration(
                  color: phoneNumber.isEmpty
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
          )
        ],
      ),
    );
  }
}
