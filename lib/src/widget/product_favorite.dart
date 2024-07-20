import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app/src/constants/colors.dart';

class ProductFavorite extends StatelessWidget {
  const ProductFavorite({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image(
          image: AssetImage('assets/images/product_demo_5.png'),
          width: 75.w,
          height: 60.h,
        ),
        15.horizontalSpace,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 150,
                child: Text(
                  'Organic Bananas',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w600),
                ),
              ),
              6.verticalSpace,
              Text(
                '7pcs, Priceg',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppColors.greyColor,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
        10.horizontalSpace,
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
            8.horizontalSpace,
            GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.chevron_right,
                size: 28,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
