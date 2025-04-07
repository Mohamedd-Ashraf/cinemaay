import 'package:gedeed/Core/DI/dependency_injection.dart';
import 'package:gedeed/Core/NetWorking/api_service.dart';
import 'package:gedeed/Features/nowPlaying/data/models/now_playing_response.dart';

class MovieRepository {
  final ApiService _apiService = getIt<ApiService>();

  Future<NowPlayingResponse> getNowPlayingMovies({
    String language = 'en-US',
    int page = 1,
  }) async {
    final data = await _apiService.fetchNowPlayingMovies(
      language: language,
      page: page,
    );
    return NowPlayingResponse.fromJson(data);
  }
}
