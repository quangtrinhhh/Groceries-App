import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app/src/constants/colors.dart';
import 'package:groceries_app/src/widget/button_reponsive.dart';
import 'package:groceries_app/src/widget/product_favorite.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: Text(
          'Yêu thích',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.sp),
        ),
        centerTitle: true,
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(4.0),
            child: Container(
              color: AppColors.greyColor,
              height: 0.2,
            )),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: Stack(
          children: [
            ListView.separated(
              itemCount: 7,
              separatorBuilder: (context, index) => Divider(
                height: 0.1,
                color: AppColors.cardBorderColor,
              ),
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.symmetric(vertical: 28.0.h),
                child: index != 6 // 6 là chiều dài product - 1
                    ? ProductFavorite()
                    : Column(
                        children: [ProductFavorite(), 65.verticalSpace],
                      ),
              ),
            ),
            Positioned(
              bottom: 25.h,
              left: 0,
              right: 0,
              child: SizedBox(
                width: double.infinity,
                child: FloatingActionButton(
                  onPressed: () {},
                  child: ReposiveButton(
                    text: 'Thêm tất cả vào giỏ hàng',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
