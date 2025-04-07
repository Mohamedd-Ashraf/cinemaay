import 'package:json_annotation/json_annotation.dart';
import 'movie_model.dart';

part 'now_playing_response.g.dart';

@JsonSerializable()
class NowPlayingResponse {
  final int page;
  final List<MovieModel> results;

  @JsonKey(name: 'total_pages')
  final int totalPages;

  @JsonKey(name: 'total_results')
  final int totalResults;

  NowPlayingResponse({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  factory NowPlayingResponse.fromJson(Map<String, dynamic> json) =>
      _$NowPlayingResponseFromJson(json);

  Map<String, dynamic> toJson() => _$NowPlayingResponseToJson(this);
}
