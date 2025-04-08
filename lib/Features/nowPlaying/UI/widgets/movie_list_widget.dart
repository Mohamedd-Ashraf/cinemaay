import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/NetWorking/api_service.dart';
import '../../../../Core/Themes/colors/colors.dart';
import '../../../../Core/Themes/styles/fonts/text_style.dart';

class MovieListWidget extends StatelessWidget {
  final List<dynamic> movies;
  const MovieListWidget({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Most popular",
                style: TextStyle(
                  color: ColorsManager.white,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "See All",
                style: TextStyle(color: ColorsManager.primarySoft),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          SizedBox(
            height: 240.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movies.length,
              itemBuilder: (context, index) {
                final movie = movies[index];
                return Container(
                  decoration: BoxDecoration(
                    color: ColorsManager.primaryDark,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  width: 120.w,
                  margin: EdgeInsets.only(right: 12.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12.r),
                            child: FadeInImage.assetNetwork(
                              placeholder:
                                  'assets/images/movie_placeholder.png',
                              image: ApiService.getImageUrl(
                                movie.posterPath ?? '',
                              ),
                              height: 160.h,
                              width: 120.w,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Positioned(
                            top: 6.h,
                            right: 3.w,
                            child: Positioned(
                              top: 8.h,
                              right: 8.w,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12.r),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaX: 10.0,
                                    sigmaY: 10.0,
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 8.w,
                                      vertical: 4.h,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorsManager.black.withOpacity(
                                        0.3,
                                      ),
                                      borderRadius: BorderRadius.circular(12.r),
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: ColorsManager.orange,
                                          size: 16.sp,
                                        ),
                                        SizedBox(width: 4.w),
                                        Text(
                                          movie.voteAverage?.toStringAsFixed(
                                                1,
                                              ) ??
                                              '0.0',
                                          style: TextStyles.h5Regular.copyWith(
                                            color: const Color.fromARGB(
                                              255,
                                              165,
                                              165,
                                              165,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.h),
                      Padding(
                        padding: EdgeInsets.only(left: 8.w),
                        child: Text(
                          movie.title ?? "",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyles.h4Semibold.copyWith(
                            color: ColorsManager.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.w),
                        child: Text(
                          "Action",
                          style: TextStyles.h6Regular,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
