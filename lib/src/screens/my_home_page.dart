import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app/src/constants/colors.dart';
import 'package:groceries_app/src/screens/page/account_page.dart';
import 'package:groceries_app/src/screens/page/cart_page.dart';
import 'package:groceries_app/src/screens/page/explore_page.dart';
import 'package:groceries_app/src/screens/page/favorite_page.dart';
import 'package:groceries_app/src/screens/page/home_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late PageController _pageController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final List<Widget> _pages = [
    HomePage(),
    ExplorePage(),
    CartPage(),
    FavoritePage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _pages,
        onPageChanged: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
      ),
      bottomNavigationBar: IntrinsicHeight(
        child: Container(
          padding: EdgeInsets.only(
            bottom: 33.31.h,
            top: 20.24.h,
            left: 15.w,
            right: 15.w,
          ),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            boxShadow: const [
              BoxShadow(
                color: Color(0xFFE6EBF3),
                blurRadius: 20,
                offset: Offset(0, -10), // Đặt bóng đổ phía trên
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.r),
              topRight: Radius.circular(15.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildNavBarItem("home", "Cửa hàng", 0),
                buildNavBarItem("explore", "Khám phá", 1),
                buildNavBarItem("cart", "Giỏ hàng", 2),
                buildNavBarItem("favorite", "Yêu Thích", 3),
                buildNavBarItem("account", "Tôi", 4),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildNavBarItem(String image, String text, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
          _pageController.jumpToPage(_currentIndex);
        });
      },
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            ColorFiltered(
              colorFilter: ColorFilter.mode(
                _currentIndex == index ? AppColors.greenColor : Colors.black,
                BlendMode.srcIn,
              ),
              child: Image.asset(
                "assets/images/bottom_navigation_icon/$image.png",
                width: 23.w,
                height: 23.h,
              ),
            ),
            6.verticalSpace,
            Text(
              text,
              style: TextStyle(
                color: _currentIndex == index
                    ? AppColors.greenColor
                    : Colors.black,
                fontSize: 13.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
