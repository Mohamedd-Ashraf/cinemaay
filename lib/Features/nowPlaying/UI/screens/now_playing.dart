import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/Themes/colors/colors.dart';
import '../../Logic/cubit/now_playing_cubit.dart';
import '../../Logic/cubit/now_playing_state.dart';
import '../widgets/category_selector.dart';
import '../widgets/custom_nav_bar.dart';
import '../widgets/movie_appbar.dart';
import '../widgets/movie_list_widget.dart';
import '../widgets/movie_slider.dart';
import '../widgets/no_search_results.dart';
import '../widgets/search_bar.dart';
import '../widgets/search_result_list_widget.dart';

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
          padding:  EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 10.h),
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
                             SizedBox(height: 20.h),
                             Text(
                              "Categories",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                             SizedBox(height: 10.h),
                             CategorySelector(),
                             SizedBox(height: 20.h),
                            MovieListWidget(movies: movies),
                          ],
                        );
              } else if (state is NowPlayingStateError) {
                movieContent = Center(
                  child: Text(
                    state.message,
                    style:  TextStyle(color: ColorsManager.red),
                  ),
                );
              } else {
                movieContent =  SizedBox.shrink();
              }

              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     MovieAppBar(),
                     SizedBox(height: 20.h),
                    MovieSearchBar(
                      onChanged:
                          (query) => context
                              .read<NowPlayingCubit>()
                              .searchMoviesLocally(query),
                    ),
                     SizedBox(height: 20.h),
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
