import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app/src/constants/colors.dart';
import 'package:groceries_app/src/screens/filters.dart';
import 'package:groceries_app/src/widget/beef_bone.dart';
import 'package:groceries_app/src/widget/input_search_widget.dart';
import 'package:groceries_app/src/widget/search.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  late FocusNode _focusNode;
  bool onFocus = false;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
  }

  void _handelFocus(bool hasFocus) {
    setState(() {
      onFocus = hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Padding(
          padding: EdgeInsets.only(
              top: 53.h, left: 25.w, right: onFocus ? 5.w : 25.w),
          child: Column(
            children: [
              if (!onFocus)
                Text(
                  "Tìm kiếm sản phẩm",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 21.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              !onFocus ? 20.verticalSpace : 0.verticalSpace,
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: InputSearchWidget(
                        focusNode: _focusNode,
                        handelFocus: _handelFocus,
                      ),
                    ),
                    if (onFocus)
                      IconButton(
                        padding: EdgeInsets.all(0),
                        icon: Icon(
                          Icons.tune,
                          size: 22.sp,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    Filters(),
                          ));
                        },
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
        toolbarHeight: onFocus ? 70 : 110,
        scrolledUnderElevation: 0,
      ),
      body: !onFocus
          ? CustomScrollView(
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
            )
          : Search(),
    );
  }
}
