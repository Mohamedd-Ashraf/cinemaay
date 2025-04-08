import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gedeed/Core/NetWorking/api_service.dart';
import 'package:gedeed/Core/Themes/colors/colors.dart';
import 'package:gedeed/Core/Themes/styles/fonts/text_style.dart';

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
            children: const [
              Text(
                "Most popular",
                style: TextStyle(
                  color: ColorsManager.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "See All",
                style: TextStyle(color: ColorsManager.primarySoft),
              ),
            ],
          ),
          const SizedBox(height: 12),
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
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: 120,
                  margin: const EdgeInsets.only(right: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: FadeInImage.assetNetwork(
                              placeholder:
                                  'assets/images/movie_placeholder.png',
                              image: ApiService.getImageUrl(
                                movie.posterPath ?? '',
                              ),
                              height: 160,
                              width: 120,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Positioned(
                            top: 6,
                            right: 3,
                            child: Positioned(
                              top: 8,
                              right: 8,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaX: 10.0,
                                    sigmaY: 10.0,
                                  ),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 4,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorsManager.black.withOpacity(
                                        0.3,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: ColorsManager.orange,
                                          size: 16,
                                        ),
                                        SizedBox(width: 4),
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
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
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
                        padding: const EdgeInsets.only(left: 8.0),
                        child: const Text(
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
