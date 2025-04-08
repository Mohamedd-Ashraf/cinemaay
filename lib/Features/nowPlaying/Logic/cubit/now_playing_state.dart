import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gedeed/Features/nowPlaying/data/models/movie_model.dart';

part 'now_playing_state.freezed.dart';

@freezed
class NowPlayingState with _$NowPlayingState {
  const factory NowPlayingState.initial() = NowPlayingStateInitial;
  const factory NowPlayingState.loading() = NowPlayingStateLoading;
  const factory NowPlayingState.loaded({
    required List<MovieModel> movies,
    @Default([]) List<MovieModel> filteredMovies,
  }) = NowPlayingStateLoaded;
  const factory NowPlayingState.error(String message) = NowPlayingStateError;

  const factory NowPlayingState.noSearchResult({
    required List<MovieModel> lastMovies,
  }) = NowPlayingStateNoSearchResult;
}