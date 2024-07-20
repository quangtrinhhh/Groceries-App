// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app/src/constants/colors.dart';

class ReposiveButton extends StatelessWidget {
  bool? isReposive;
  double? width;
  String? text;

  ReposiveButton({
    super.key,
    this.isReposive = false,
    this.width,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 67.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.greenColor,
      ),
      child: Center(
        child: Text(
          text ?? '',
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
