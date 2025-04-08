import '../../../../Core/DI/dependency_injection.dart';
import '../../../../Core/NetWorking/api_service.dart';
import '../models/now_playing_response.dart';

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
