import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:groceries_app/src/constants/colors.dart';
import 'package:groceries_app/src/widget/button_reponsive.dart';
import 'package:groceries_app/src/widget/category_check.dart';

class Filters extends StatefulWidget {
  const Filters({super.key});

  @override
  _FiltersState createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: Text(
          'Bộ lọc',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.sp),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.searchColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(25.0.w),
              child: SingleChildScrollView(
                // Thêm SingleChildScrollView tại đây
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Loại',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 24.sp,
                          ),
                        ),
                        25.verticalSpace,
                        Wrap(
                          spacing:
                              20, // Khoảng cách giữa các phần tử trong hàng
                          runSpacing: 20, // Khoảng cách giữa các hàng
                          children: List.generate(
                            4, // Số lượng CategoryCheck bạn muốn hiển thị
                            (index) => CategoryCheck(),
                          ),
                        ),
                      ],
                    ),
                    40.verticalSpace,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Thương hiệu',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 24.sp,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Wrap(
                          spacing:
                              20, // Khoảng cách giữa các phần tử trong hàng
                          runSpacing: 20, // Khoảng cách giữa các hàng
                          children: List.generate(
                            4, // Số lượng CategoryCheck bạn muốn hiển thị
                            (index) => CategoryCheck(),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 200.h,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 25.h,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: SizedBox(
                width: double.infinity,
                child: FloatingActionButton(
                  onPressed: () {},
                  child: ReposiveButton(
                    text: "Áp dụng bộ lọc",
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
