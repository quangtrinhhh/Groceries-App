import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app/src/constants/colors.dart';

class CardProduct extends StatefulWidget {
  const CardProduct({super.key});

  @override
  _CardProductState createState() => _CardProductState();
}

class _CardProductState extends State<CardProduct> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 173.32.w,
        height: 263.2.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(18.r)),
          border: Border.all(width: 1.w, color: AppColors.cardBorderColor),
          color: Colors.white,
        ),
        child: Padding(
          padding:
              EdgeInsets.only(left: 15.w, right: 15.w, bottom: 15.w, top: 25.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Image(
                  image: AssetImage('assets/images/banana.png'),
                  width: 99.89.w,
                  height: 79.43.h,
                ),
              ),
              25.verticalSpace,
              Text(
                'Organic Bananas1111111111',
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
              20.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$4.99',
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 45.w,
                      height: 45.w,
                      decoration: BoxDecoration(
                        color: AppColors.greenColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.r),
                        ),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.add_outlined,
                          color: Colors.white,
                          size: 25.sp,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
