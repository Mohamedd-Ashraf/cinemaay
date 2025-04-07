class ApiConstants {
  static const String apiBaseUrl = "https://api.themoviedb.org/3";
  static const String imageBaseUrl = 'https://image.tmdb.org/t/p/';
  static const String defaultImageSize = 'w500';

  static const String playingNowPath  = "/movie/now_playing";
  static const String bearerToken =
      'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIyODhjNGE2NjQ5M2I1ZThhMTM0NmQ5MmIyZTI2YzZjNiIsIm5iZiI6MTc0Mzg4MDUzMy45NjYsInN1YiI6IjY3ZjE4MTU1Y2JkNTViNjYxZmQ5ODMxMCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.mcot2w_4vBGJKQuaOcWOsswsMyFCDDUpUTaz4YvYrXI';

}

class ApiErrors {
  static const String badRequestError = "badRequestError";
  static const String noContent = "noContent";
  static const String forbiddenError = "forbiddenError";
  static const String unauthorizedError = "unauthorizedError";
  static const String notFoundError = "notFoundError";
  static const String conflictError = "conflictError";
  static const String internalServerError = "internalServerError";
  static const String unknownError = "unknownError";
  static const String timeoutError = "timeoutError";
  static const String defaultError = "defaultError";
  static const String cacheError = "cacheError";
  static const String noInternetError = "noInternetError";
  static const String loadingMessage = "loading_message";
  static const String retryAgainMessage = "retry_again_message";
  static const String ok = "Ok";
}
