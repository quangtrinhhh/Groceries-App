import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app/src/constants/colors.dart';
import 'package:groceries_app/src/widget/button_reponsive.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Yêu thích',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(4.0),
            child: Container(
              color: AppColors.greyColor,
              height: 0.2,
            )),
      ),
      body: Stack(
        children: [
          ListView.separated(
            itemCount: 6,
            separatorBuilder: (context, index) => Divider(
              height: 0.2,
              color: Colors.grey[300],
            ),
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Image(
                      image: AssetImage('assets/images/banana.png'),
                      width: 50.w,
                      height: 50.h,
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: 200.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Organic Bananas111111',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w600),
                            ),
                            5.verticalSpace,
                            Text(
                              '7pcs, Priceg',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: AppColors.greyColor,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '\$4.99',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.chevron_right),
                      ),
                    ],
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
                    text: 'Thêm tất cả vào giỏ',
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
