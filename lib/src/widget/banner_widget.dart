import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app/src/constants/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({super.key});

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  int _currentIndex = 0;
  final CarouselController _carouseController = CarouselController();

  List<String> bannerList = [
    "assets/images/home_page/banner.png",
    "assets/images/home_page/banner.png",
    "assets/images/home_page/banner.png",
    "assets/images/home_page/banner.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider.builder(
          carouselController: _carouseController,
          itemCount: bannerList.length,
          itemBuilder: (context, index, realIndex) {
            return ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(15.r)),
              child: Image.asset(
                bannerList[index],
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            );
          },
          options: CarouselOptions(
            autoPlay: true,
            height: 115.h,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
        Positioned(
          bottom: 5,
          right: 0,
          left: 0,
          child: Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: AnimatedSmoothIndicator(
              activeIndex: _currentIndex,
              count: bannerList.length,
              effect: ExpandingDotsEffect(
                activeDotColor: AppColors.greenColor,
                dotColor: Colors.grey,
                dotHeight: 7.0,
                dotWidth: 7.0,
                spacing: 8.0,
              ),
              onDotClicked: (index) {
                setState(() {
                  _carouseController.animateToPage(index);
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
