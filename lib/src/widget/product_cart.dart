import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app/src/constants/colors.dart';

class ProductCart extends StatefulWidget {
  const ProductCart({super.key});

  @override
  _ProductCartState createState() => _ProductCartState();
}

class _ProductCartState extends State<ProductCart> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 28.0.h),
        child: Row(
          children: [
            Image(
              image: AssetImage('assets/images/product_demo.png'),
              width: 75.w,
              height: 60.h,
            ),
            SizedBox(
              width: 32.w,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Organic Bananas',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.close,
                          size: 25,
                          color: AppColors.greyColor,
                        ),
                        onTap: () {},
                      )
                    ],
                  ),
                  2.verticalSpace,
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
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 130.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkResponse(
                              onTap: () {},
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                    border: Border.all(
                                      color: AppColors.cardBorderColor,
                                    )),
                                child: Icon(
                                  Icons.remove,
                                  color: AppColors.greyColor,
                                ),
                              ),
                            ),
                            Text(
                              '1',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            InkResponse(
                              onTap: () {},
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                    border: Border.all(
                                      color: AppColors.cardBorderColor,
                                    )),
                                child: Icon(
                                  Icons.add,
                                  color: AppColors.greenColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        '\$4.99',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
