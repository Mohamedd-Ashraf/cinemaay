import 'package:flutter/material.dart';
import 'package:gedeed/Core/Themes/colors/colors.dart';
import 'package:gedeed/Features/nowPlaying/data/models/movie_model.dart';
import 'package:gedeed/Core/NetWorking/api_service.dart';

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
                width: 100,
                height: 140,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 12),

            // Info Column
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Rating + Tag
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.star,
                              size: 14,
                              color: ColorsManager.white,
                            ),
                            const SizedBox(width: 2),
                            Text(
                              movie.voteAverage?.toStringAsFixed(1) ?? "0.0",
                              style: const TextStyle(
                                color: ColorsManager.white,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color:
                              movie.id! % 2 == 0 ? Colors.orange : ColorsManager.primarySoft,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          movie.id! % 2 == 0 ? 'Premium' : 'Free',
                          style: const TextStyle(
                            color: ColorsManager.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),

                  // Movie Title
                  Text(
                    movie.title ?? '',
                    style: const TextStyle(
                      fontSize: 16,
                      color: ColorsManager.white,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 6),

                  // Year
                  Row(
                    children: [
                      const Icon(
                        Icons.calendar_today,
                        size: 14,
                        color: ColorsManager.whiteGrey,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        movie.releaseDate?.split('-').first ?? 'N/A',
                        style: const TextStyle(
                          color: ColorsManager.whiteGrey,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),

                  // Duration + Certification
                  Row(
                    children: [
                      const Icon(
                        Icons.access_time,
                        size: 14,
                        color: ColorsManager.whiteGrey,
                      ),
                      const SizedBox(width: 4),
                      const Text(
                        "148 Minutes",
                        style: TextStyle(
                          color: ColorsManager.whiteGrey,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: ColorsManager.primarySoft,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Text(
                          'PG-13',
                          style: TextStyle(
                            color: ColorsManager.white,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),

                  // Genre
                  Row(
                    children: const [
                      Icon(
                        Icons.movie,
                        size: 14,
                        color: ColorsManager.whiteGrey,
                      ),
                      SizedBox(width: 4),
                      Text(
                        "Action | Movie",
                        style: TextStyle(
                          color: ColorsManager.whiteGrey,
                          fontSize: 12,
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
