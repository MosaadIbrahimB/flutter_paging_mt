import '../../../core/network/api_result.dart';
import '../../../core/network/api_service.dart';
import '../model/cast_response.dart';
import '../model/trailer_response.dart';

class MovieDetailsRepository {
  final ApiService _apiService;

  MovieDetailsRepository(this._apiService);

  Future<ApiResult<CastResponse>> getMovieCast(int movieId) async {
    return _apiService.fetchMovieCast(movieId);
  }

  Future<ApiResult<TrailerResponse>> getMovieTrailer(int movieId) async {
    return _apiService.fetchMovieTrailer(movieId);
  }
}
