import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/Themes/colors/colors.dart';
import '../../data/models/movie_model.dart';
import '../../../../Core/NetWorking/api_service.dart';

class SearchResultListWidget extends StatelessWidget {
  final List<MovieModel> movies;

  const SearchResultListWidget({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: movies.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (_, __) => const SizedBox(height: 16),
      itemBuilder: (context, index) {
        final movie = movies[index];
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Movie Poster
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: FadeInImage.assetNetwork(
                placeholder: 'assets/images/movie_placeholder.png',
                image: ApiService.getImageUrl(movie.posterPath ?? ''),
                width: 100.w,
                height: 140.h,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 12.w),

            // Info Column
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Rating + Tag
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6.w,
                          vertical: 2.h,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(4.sp),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 14.sp,
                              color: ColorsManager.white,
                            ),
                            SizedBox(width: 2.w),
                            Text(
                              movie.voteAverage?.toStringAsFixed(1) ?? "0.0",
                              style: TextStyle(
                                color: ColorsManager.white,
                                fontSize: 12.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6.sp,
                          vertical: 2.sp,
                        ),
                        decoration: BoxDecoration(
                          color:
                              movie.id! % 2 == 0
                                  ? Colors.orange
                                  : ColorsManager.primarySoft,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          movie.id! % 2 == 0 ? 'Premium' : 'Free',
                          style: TextStyle(
                            color: ColorsManager.white,
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.h),

                  // Movie Title
                  Text(
                    movie.title ?? '',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: ColorsManager.white,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 6.h),

                  // Year
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_today,
                        size: 14.sp,
                        color: ColorsManager.whiteGrey,
                      ),
                      SizedBox(width: 4.w),
                      Text(
                        movie.releaseDate?.split('-').first ?? 'N/A',
                        style: TextStyle(
                          color: ColorsManager.whiteGrey,
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4.h),

                  // Duration + Certification
                  Row(
                    children: [
                      Icon(
                        Icons.access_time,
                        size: 14.sp,
                        color: ColorsManager.whiteGrey,
                      ),
                      SizedBox(width: 4.w),
                      Text(
                        "148 Minutes",
                        style: TextStyle(
                          color: ColorsManager.whiteGrey,
                          fontSize: 12.sp,
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6.w,
                          vertical: 2.h,
                        ),
                        decoration: BoxDecoration(
                          color: ColorsManager.primarySoft,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          'PG-13',
                          style: TextStyle(
                            color: ColorsManager.white,
                            fontSize: 10.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4.h),

                  // Genre
                  Row(
                    children: [
                      Icon(
                        Icons.movie,
                        size: 14.sp,
                        color: ColorsManager.whiteGrey,
                      ),
                      SizedBox(width: 4.w),
                      Text(
                        "Action | Movie",
                        style: TextStyle(
                          color: ColorsManager.whiteGrey,
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
