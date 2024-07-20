// lib/src/widget/input_search_widget.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app/src/constants/colors.dart';

class InputSearchWidget extends StatefulWidget {
  const InputSearchWidget({
    super.key,
    required this.focusNode,
    required this.handelFocus,
  });
  final FocusNode focusNode;
  final Function(bool) handelFocus;

  @override
  State<InputSearchWidget> createState() => _InputSearchWidgetState();
}

class _InputSearchWidgetState extends State<InputSearchWidget> {
  bool onFocus = false;
  @override
  void initState() {
    super.initState();

    widget.focusNode.addListener(() {
      if (widget.focusNode.hasFocus) {
        print('TextField is focused');
        widget.handelFocus(true);
        setState(() {
          onFocus = true;
        });
      } else {
        // print('TextField lost focus');
        // widget.handelFocus(false);
        // setState(() {
        //   onFocus = false;
        // });
        //xử lý khi người dùng nhấn enter
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.all(Radius.circular(15.r)),
        border: Border.all(color: Color.fromARGB(255, 239, 239, 239)),
        color: AppColors.searchInputColor,
      ),
      child: TextField(
        focusNode: widget.focusNode,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Tìm kiếm...',
          suffixIcon: onFocus
              ? GestureDetector(
                  child: Icon(
                    Icons.close,
                    color: Colors.black,
                    size: 20,
                  ),
                  onTap: () {
                    setState(() {
                      widget.handelFocus(false);
                      onFocus = false;
                      FocusScope.of(context).unfocus();
                    });
                  },
                )
              : null,
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Icon(
              Icons.search,
              color: Colors.black,
              size: 25,
            ),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 16.0.h),
        ),
      ),
    );
  }
}
