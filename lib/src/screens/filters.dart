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
        title: Text(
          'Filters',
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
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
              padding: const EdgeInsets.all(25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Categories',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 20.sp,
                        ),
                      ),
                      Wrap(
                        spacing: 10, // Khoảng cách giữa các phần tử trong hàng
                        runSpacing: 10, // Khoảng cách giữa các hàng
                        children: List.generate(
                          4, // Số lượng CategoryCheck bạn muốn hiển thị
                          (index) => CategoryCheck(),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Brand',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.sp,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Wrap(
                        spacing: 10, // Khoảng cách giữa các phần tử trong hàng
                        runSpacing: 10, // Khoảng cách giữa các hàng
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
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: double.infinity,
                child: FloatingActionButton(
                  onPressed: () {},
                  child: ReposiveButton(
                    text: 'Apply Filter',
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
