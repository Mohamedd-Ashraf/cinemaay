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
import 'package:gedeed/Features/nowPlaying/UI/widgets/search_bar.dart';

class NowPlayingScreen extends StatefulWidget {
  const NowPlayingScreen({super.key});

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
              if (state is nowPlayingStateLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is NowPlayingStateError) {
                return Center(
                  child: Text(
                    state.message,
                    style: const TextStyle(color: ColorsManager.red),
                  ),
                );
              } else if (state is nowPlayingStateLoaded) {
                final movies = state.movies;
                return SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const MovieAppBar(),
                      const SizedBox(height: 20),
                      MovieSearchBar(),
                      const SizedBox(height: 10),
                      MovieSlider(movies: movies),
                      const SizedBox(height: 20),
                      const Text(
                        "Categories",
                        style: TextStyle(
                          color: ColorsManager.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const CategorySelector(),
                      const SizedBox(height: 20),
                      MovieListWidget(movies: movies),
                    ],
                  ),
                );
              }
              return const SizedBox.shrink();
            },
          ),
        ),
      ),
    );
  }
}
