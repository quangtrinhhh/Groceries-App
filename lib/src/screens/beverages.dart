import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app/src/constants/colors.dart';
import 'package:groceries_app/src/constants/size.dart';
import 'package:groceries_app/src/widget/card_product.dart';

class Beverages extends StatefulWidget {
  const Beverages({super.key, required this.categoryName});
  final String categoryName;

  @override
  State<Beverages> createState() => _BeveragesState();
}

class _BeveragesState extends State<Beverages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          widget.categoryName,
          style: TextStyle(
            color: Colors.black,
            fontSize: 21.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColors.backgroundColor,
        scrolledUnderElevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            size: 22.sp,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.tune,
                  size: 22.sp,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              10.horizontalSpace,
            ],
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsets.only(
                bottom: 30.h, top: 20.h, left: 25.w, right: 25.w),
            sliver: SliverGrid.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 15, // Khoảng cách giữa các hàng
                crossAxisSpacing: 15, // Khoảng cách giữa các cột
                childAspectRatio:
                    AppSize.widthCardProduct / AppSize.heightCardProduct,
              ),
              itemBuilder: (context, index) {
                return CardProduct();
              },
            ),
          ),
        ],
      ),
    );
  }
}
