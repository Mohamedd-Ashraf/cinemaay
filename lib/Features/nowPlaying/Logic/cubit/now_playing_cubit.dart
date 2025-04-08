import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../Core/DI/dependency_injection.dart';
import '../../data/repo/movie_repo.dart';
import '../../data/models/movie_model.dart';
import 'now_playing_state.dart';

class NowPlayingCubit extends Cubit<NowPlayingState> {
  final MovieRepository _repository = getIt<MovieRepository>();

  NowPlayingCubit() : super(const NowPlayingState.initial());

  Future<void> fetchNowPlaying() async {
    emit(const NowPlayingState.loading());

    try {
      final response = await _repository.getNowPlayingMovies();
      final List<MovieModel> movies = response.results;
      emit(NowPlayingState.loaded(movies: movies));
    } catch (e) {
      emit(NowPlayingState.error(e.toString()));
    }
  }

  void searchMoviesLocally(String query) {
    final currentState = state;

    if (currentState is NowPlayingStateLoaded) {
      if (query.isEmpty) {
        emit(currentState.copyWith(filteredMovies: []));
      } else {
        final filtered =
            currentState.movies.where((movie) {
              final title = movie.title?.toLowerCase() ?? '';
              return title.contains(query.toLowerCase());
            }).toList();

        if (filtered.isEmpty) {
          emit(NowPlayingState.noSearchResult(lastMovies: currentState.movies));
        } else {
          emit(currentState.copyWith(filteredMovies: filtered));
        }
      }
    } else if (currentState is NowPlayingStateNoSearchResult) {
      final lastMovies = currentState.lastMovies;
      final filtered =
          lastMovies.where((movie) {
            final title = movie.title?.toLowerCase() ?? '';
            return title.contains(query.toLowerCase());
          }).toList();

      if (query.isEmpty) {
        emit(NowPlayingState.loaded(movies: lastMovies, filteredMovies: []));
      } else if (filtered.isEmpty) {
        emit(NowPlayingState.noSearchResult(lastMovies: lastMovies));
      } else {
        emit(
          NowPlayingState.loaded(movies: lastMovies, filteredMovies: filtered),
        );
      }
    }
  }

  void clearSearch() {
    final currentState = state;

    if (currentState is NowPlayingStateLoaded) {
      emit(currentState.copyWith(filteredMovies: []));
    } else if (currentState is NowPlayingStateNoSearchResult) {
      emit(
        NowPlayingState.loaded(
          movies: currentState.lastMovies,
          filteredMovies: [],
        ),
      );
    }
  }
}
