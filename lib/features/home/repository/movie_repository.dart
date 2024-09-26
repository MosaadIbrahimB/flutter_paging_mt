import '../../../core/network/api_result.dart';
import '../../../core/network/api_service.dart';
import '../model/movie_response.dart';

class MovieRepository {
  final ApiService _apiService;
  MovieRepository(this._apiService);

  Future<ApiResult<MovieResponse>> getNowShowingMovies() async {
    return await _apiService.fetchNowShowingMovies();
  }

  Future<ApiResult<MovieResponse>> getPopularMovies(int page) async {
    return await _apiService.fetchPopularMovies(page);
  }
}
