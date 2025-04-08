import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/NetWorking/api_service.dart';
import '../../../../Core/Themes/colors/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MovieSlider extends StatefulWidget {
  final List<dynamic> movies;
  const MovieSlider({super.key, required this.movies});

  @override
  State<MovieSlider> createState() => _MovieSliderState();
}

class _MovieSliderState extends State<MovieSlider> {
  late PageController _pageController;
  int _currentIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.85);
    _startAutoSlide();
  }

  void _startAutoSlide() {
    _timer = Timer.periodic(const Duration(seconds: 2), (_) {
      if (_pageController.hasClients) {
        int nextPage = (_currentIndex + 1) % widget.movies.length;
        _pageController.animateToPage(
          nextPage,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 250.h,
          child: PageView.builder(
            controller: _pageController,
            itemCount: widget.movies.length,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemBuilder: (_, index) {
              final movie = widget.movies[index];
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16.r),
                      child: FadeInImage.assetNetwork(
                        placeholder: 'assets/images/movie_placeholder.png',
                        image: ApiService.getImageUrl(movie.posterPath ?? ''),
                        fit: BoxFit.fill,
                        width: double.infinity,
                      ),
                    ),
                    Positioned(
                      bottom: 20.h,
                      left: 20.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            movie.title ?? '',
                            style: TextStyle(
                              color: ColorsManager.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                            ),
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            'On ${movie.releaseDate ?? ''}',
                            style: TextStyle(
                              color: ColorsManager.grey,
                              fontSize: 12.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        SizedBox(height: 12.h),
        SmoothPageIndicator(
          controller: _pageController, 
          count: widget.movies.length,
          axisDirection: Axis.horizontal,
          effect: ScrollingDotsEffect(
            fixedCenter: true,
            activeDotColor: ColorsManager.primarySoft,
            dotColor: ColorsManager.darkGrey,
            dotHeight: 10.h,
            dotWidth: 18.w,
            strokeWidth: 1.5.w,
          ),
        ),
      ],
    );
  }
}
