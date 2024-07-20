// lib/src/widget/input_search_widget.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app/src/constants/colors.dart';

class InputSearchWidget extends StatelessWidget {
  const InputSearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.all(Radius.circular(15.r)),
        border: Border.all(color: Color.fromARGB(255, 239, 239, 239)),
        color: AppColors.searchInputColor,
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Tìm kiếm...',
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Icon(
              Icons.search,
              color: Colors.black,
              size: 28,
            ),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 16.0.h),
        ),
      ),
    );
  }
}
