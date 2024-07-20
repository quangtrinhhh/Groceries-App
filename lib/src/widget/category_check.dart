import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app/src/constants/colors.dart';

class CategoryCheck extends StatefulWidget {
  const CategoryCheck({super.key});

  @override
  _CategoryCheckState createState() => _CategoryCheckState();
}

class _CategoryCheckState extends State<CategoryCheck> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
      child: Row(
        children: [
          SizedBox(
            width: 24.w,
            height: 24.w,
            child: Checkbox(
              visualDensity: VisualDensity(
                horizontal: -4,
                vertical: -4,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              checkColor: Colors.white,
              activeColor: AppColors.greenColor,
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
          ),
          SizedBox(width: 11.w), // Khoảng cách giữa Checkbox và Text
          Text(
            'Eggs',
            style: TextStyle(fontSize: 16.sp),
          ),
        ],
      ),
    );
  }
}
