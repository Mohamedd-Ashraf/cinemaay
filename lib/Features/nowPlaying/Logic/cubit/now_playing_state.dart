import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gedeed/Features/nowPlaying/data/models/movie_model.dart';

part 'now_playing_state.freezed.dart';

@freezed
class NowPlayingState with _$NowPlayingState {
  const factory NowPlayingState.initial() = nowPlayingStateIntial;
  const factory NowPlayingState.loading() = nowPlayingStateLoading;
  const factory NowPlayingState.loaded(List<MovieModel> movies) = nowPlayingStateLoaded;
  const factory NowPlayingState.error(String message) = NowPlayingStateError;
}
