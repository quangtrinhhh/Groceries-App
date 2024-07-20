import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app/src/constants/size.dart';
import 'package:groceries_app/src/widget/card_product.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
