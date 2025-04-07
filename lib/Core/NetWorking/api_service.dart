import 'package:gedeed/Core/NetWorking/api_constants.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'dio_factory.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  // Fetch now playing movies.
  @GET(ApiConstants.playingNowPath)
  Future<dynamic> fetchNowPlayingMovies({
    @Query('language') String language = 'en-US',
    @Query('page') int page = 1,

  });

  /// Helper method to build the full image URL from a poster path.
  static String getImageUrl(String posterPath, {String size = ApiConstants.defaultImageSize}) {
    return '${ApiConstants.imageBaseUrl}$size$posterPath';
  }
}

