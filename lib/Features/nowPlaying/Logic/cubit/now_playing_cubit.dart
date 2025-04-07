import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gedeed/Core/DI/dependency_injection.dart';
import 'package:gedeed/Features/nowPlaying/data/repo/movie_repo.dart' show MovieRepository;
import 'package:gedeed/Features/nowPlaying/data/models/movie_model.dart';

import 'now_playing_state.dart';

class NowPlayingCubit extends Cubit<NowPlayingState> {
  final MovieRepository _repository = getIt<MovieRepository>();

  NowPlayingCubit() : super(const NowPlayingState.initial());

  Future<void> fetchNowPlaying() async {
    emit(const NowPlayingState.loading());

    try {
      final response = await _repository.getNowPlayingMovies();
      final List<MovieModel> movies = response.results;
      emit(NowPlayingState.loaded(movies));
    } catch (e) {
      emit(NowPlayingState.error(e.toString()));
    }
  }
}
