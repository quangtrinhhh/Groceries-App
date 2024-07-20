import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app/src/constants/colors.dart';
import 'package:groceries_app/src/widget/banner_widget.dart';
import 'package:groceries_app/src/widget/card_product.dart';
import 'package:groceries_app/src/widget/input_search_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 58.h),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 23.5.w),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/logo.png",
                    width: 25.48.w,
                    height: 30.8.h,
                  ),
                  3.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on_sharp,
                        color: Color(0xFF4C4F4D),
                      ),
                      3.horizontalSpace,
                      Text(
                        "Dhaka, Banassre",
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF4C4F4D),
                        ),
                      ),
                    ],
                  ),
                  23.verticalSpace,
                  InputSearchWidget(),
                  20.verticalSpace,
                  BannerWidget(),
                ],
              ),
            ),
            ProductSilder(title: "Khuyến mãi"),
            ProductSilder(title: "Bán chạy"),
            ProductSilder(title: "Cửa hàng"),
          ],
        ),
      ),
    );
  }
}

class ProductSilder extends StatelessWidget {
  ProductSilder({
    super.key,
    required this.title,
  });

  late String title;
  List<String> groceriesImages = [
    "assets/images/home_page/Pulses.png",
    "assets/images/home_page/Rice.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 23.5.w),
      child: Column(
        children: [
          30.verticalSpace,
          Padding(
            padding: EdgeInsets.only(right: 23.5.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22.sp,
                  ),
                  textAlign: TextAlign.left,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Xem tất cả",
                    style: TextStyle(
                        color: AppColors.greenColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          ),
          title == "Cửa hàng"
              ? Column(
                  children: [
                    19.verticalSpace,
                    SizedBox(
                      height: 105.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(18.r)),
                                  child: Image.asset(
                                    groceriesImages[index],
                                    width: 248.w,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              14.horizontalSpace,
                            ],
                          );
                        },
                      ),
                    ),
                    19.verticalSpace,
                  ],
                )
              : 19.verticalSpace,
          Container(
            height: 235,
            alignment: AlignmentDirectional.center,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5, // số lượng card
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    CardProduct(),
                    15.horizontalSpace,
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
