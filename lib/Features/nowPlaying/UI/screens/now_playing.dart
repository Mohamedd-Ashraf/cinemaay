import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gedeed/Core/NetWorking/api_service.dart';
import 'package:gedeed/Features/nowPlaying/Logic/cubit/now_playing_cubit.dart';
import 'package:gedeed/Features/nowPlaying/Logic/cubit/now_playing_state.dart';
import 'package:gedeed/Features/nowPlaying/data/models/movie_model.dart';

class NowPlayingScreen extends StatelessWidget {
  const NowPlayingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<NowPlayingCubit, NowPlayingState>(
      listener: (context, state) {
        if (state is NowPlayingStateError) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.message)));
        }
      },
      child: Scaffold(
        appBar: AppBar(title: const Text('Now Playing Movies')),
        body: BlocBuilder<NowPlayingCubit, NowPlayingState>(
          builder: (context, state) {
            return switch (state) {
              nowPlayingStateIntial() || nowPlayingStateLoading() =>
                const Center(child: CircularProgressIndicator()),
              NowPlayingStateError(:final message) => Center(
                child: Text('Error: $message'),
              ),
              nowPlayingStateLoaded(:final movies) => _buildMovieList(movies),
              _ => const Center(child: Text('Unexpected state')),
            };
          },
        ),
      ),
    );
  }

  Widget _buildMovieList(List<MovieModel> movies) {
    return ListView.builder(
      padding: const EdgeInsets.all(12),
      itemCount: movies.length,
      itemBuilder: (context, index) {
        final movie = movies[index];
        return Card(
          elevation: 3,
          margin: const EdgeInsets.symmetric(vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child:
                  movie.posterPath != null
                      ? FadeInImage.assetNetwork(
                        placeholder:
                            'assets/images/movie_placeholder.png', // make sure this exists
                        image: ApiService.getImageUrl(movie.posterPath!),
                        width: 60,
                        height: 90,
                        fit: BoxFit.cover,
                        imageErrorBuilder:
                            (context, error, stackTrace) =>
                                const Icon(Icons.broken_image, size: 50),
                      )
                      : const Icon(Icons.image_not_supported, size: 50),
            ),
            title: Text(movie.title),
            subtitle: Text('Release: ${movie.releaseDate}'),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.star, color: Colors.amber, size: 20),
                Text(movie.voteAverage.toString()),
              ],
            ),
          ),
        );
      },
    );
  }
}
