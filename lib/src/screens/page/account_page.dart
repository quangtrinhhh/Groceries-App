import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app/src/constants/colors.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 70.w,
                          height: 70.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Colors.amber,
                          ),
                          child: Image(
                            image: AssetImage('assets/images/Rectangle 82.png'),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Afsar Hossen',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.edit,
                                    color: AppColors.greenColor,
                                  ),
                                  style: ButtonStyle(
                                    elevation: WidgetStatePropertyAll(0),
                                    // icon chiếm diễn tích làm đẩy email xuống chữa fix được
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Imshuvo97@gmail.com',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: 364,
                height: 60,
                child: ElevatedButton.icon(
                  onPressed: () {
                    // Xử lý sự kiện nhấn nút đăng xuất
                  },
                  icon: Icon(
                    Icons.logout,
                    color: AppColors.greenColor,
                  ),
                  label: Text(
                    'Đăng xuất',
                    style: TextStyle(color: AppColors.greenColor),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFF2F3F2),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
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
