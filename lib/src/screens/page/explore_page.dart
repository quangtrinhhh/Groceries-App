import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app/src/constants/colors.dart';
import 'package:groceries_app/src/widget/beef_bone.dart';
import 'package:groceries_app/src/widget/input_search_widget.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Padding(
          padding: EdgeInsets.only(top: 53.h, left: 25.w, right: 25.w),
          child: Column(
            children: [
              Text(
                "Tìm kiếm sản phẩm",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 21.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              20.verticalSpace,
              InputSearchWidget(), // cho lên appbar
            ],
          ),
        ),
        toolbarHeight: 110,
        backgroundColor: AppColors.backgroundColor,
        scrolledUnderElevation: 0,
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsets.only(
                bottom: 30.h, top: 20.h, left: 25.w, right: 25.w),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 15.w, // Khoảng cách giữa các hàng
                crossAxisSpacing: 15.h, // Khoảng cách giữa các cột
                childAspectRatio: 174.w /
                    189.h, // Tỷ lệ chiều rộng / chiều cao của mỗi item),
              ),
              delegate: SliverChildListDelegate(
                [
                  BeefBone(
                    name: "Rau củ quả",
                    image: "pngfuel 6.png",
                    color: AppColors.greenColor,
                  ),
                  BeefBone(
                    name: "Dầu ăn & bơ",
                    image: "pngfuel 8.png",
                    color: Color(0xFFF8A44C),
                  ),
                  BeefBone(
                    name: "Thịt cá",
                    image: "pngfuel 9.png",
                    color: Color(0xFFF7A593),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
