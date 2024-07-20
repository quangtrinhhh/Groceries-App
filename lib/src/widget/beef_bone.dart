import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app/src/screens/beverages.dart';

class BeefBone extends StatelessWidget {
  const BeefBone({
    super.key,
    required this.name,
    required this.image,
    required this.color,
  });

  final String name;
  final String image;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              Beverages(categoryName: name),
        ));
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: color, width: 0.8),
          borderRadius: BorderRadius.all(
            Radius.circular(18.r),
          ),
        ),
        clipBehavior: Clip.hardEdge,
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(18.r),
          ),
          child: Stack(
            children: [
              Positioned.fill(
                child: Opacity(
                  opacity: 0.1,
                  child: Container(
                    width: double.infinity,
                    height: 200.h,
                    color: color,
                  ),
                ),
              ),
              Container(
                alignment: AlignmentDirectional.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/explore_page/$image",
                      height: 77.h,
                    ),
                    20.5.verticalSpace,
                    Container(
                      alignment: AlignmentDirectional.center,
                      height: 36.h,
                      width: 124.w,
                      child: Text(
                        maxLines: 2,
                        name,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
