import 'package:flutter_bloc/flutter_bloc.dart';

import '../../repository/movie_repository.dart';
import 'popular_state.dart';

class PopularCubit extends Cubit<PopularState> {
  int _page = 1;
  bool _isFetching = false;
  final MovieRepository _movieRepository;
  PopularCubit(this._movieRepository) : super(Initial());

  void emitPopularState() {
    if (_isFetching) return;
    _isFetching = true;
    emit(Loading());
    _movieRepository.getPopularMovies(_page).then((result) {
      _page++;
      result.when(
          success: (data) => emit(Success(data)),
          failure: (e) => emit(Error(e)));
    });
    _isFetching = false;
  }
}
