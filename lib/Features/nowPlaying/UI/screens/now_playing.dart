import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gedeed/Core/Themes/colors/colors.dart';
import 'package:gedeed/Features/nowPlaying/Logic/cubit/now_playing_cubit.dart';
import 'package:gedeed/Features/nowPlaying/Logic/cubit/now_playing_state.dart';
import 'package:gedeed/Features/nowPlaying/UI/widgets/category_selector.dart';
import 'package:gedeed/Features/nowPlaying/UI/widgets/custom_nav_bar.dart';
import 'package:gedeed/Features/nowPlaying/UI/widgets/movie_appbar.dart';
import 'package:gedeed/Features/nowPlaying/UI/widgets/movie_list_widget.dart';
import 'package:gedeed/Features/nowPlaying/UI/widgets/movie_slider.dart';
import 'package:gedeed/Features/nowPlaying/UI/widgets/no_search_results.dart';
import 'package:gedeed/Features/nowPlaying/UI/widgets/search_bar.dart';
import 'package:gedeed/Features/nowPlaying/UI/widgets/search_result_list_widget.dart';

class NowPlayingScreen extends StatefulWidget {
  const NowPlayingScreen({super.key});
  //TODO pass the name of the user to the screen
  // final String username;
  @override
  State<NowPlayingScreen> createState() => _NowPlayingScreenState();
}

class _NowPlayingScreenState extends State<NowPlayingScreen> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    context.read<NowPlayingCubit>().fetchNowPlaying();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C27),
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: _selectedIndex,
        onItemSelected: (index) {
          setState(() => _selectedIndex = index);
        },
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
          child: BlocBuilder<NowPlayingCubit, NowPlayingState>(
            builder: (context, state) {
              if (state is NowPlayingStateLoading) {
                return const Center(child: CircularProgressIndicator());
              }

              final Widget movieContent;

              if (state is NowPlayingStateNoSearchResult) {
                movieContent = const NoSearchResultWidget();
              } else if (state is NowPlayingStateLoaded) {
                final movies = state.movies;
                final filteredMovies = state.filteredMovies;

                movieContent =
                    filteredMovies.isNotEmpty
                        ? SearchResultListWidget(movies: filteredMovies)
                        : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MovieSlider(movies: movies),
                            const SizedBox(height: 20),
                            const Text(
                              "Categories",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const CategorySelector(),
                            const SizedBox(height: 20),
                            MovieListWidget(movies: movies),
                          ],
                        );
              } else if (state is NowPlayingStateError) {
                movieContent = Center(
                  child: Text(
                    state.message,
                    style: const TextStyle(color: ColorsManager.red),
                  ),
                );
              } else {
                movieContent = const SizedBox.shrink();
              }

              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const MovieAppBar(),
                    const SizedBox(height: 20),
                    MovieSearchBar(
                      onChanged:
                          (query) => context
                              .read<NowPlayingCubit>()
                              .searchMoviesLocally(query),
                    ),
                    const SizedBox(height: 20),
                    movieContent,
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
