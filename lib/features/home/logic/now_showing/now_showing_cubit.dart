import 'package:flutter_bloc/flutter_bloc.dart';

import '../../repository/movie_repository.dart';
import 'now_showing_state.dart';

class NowShowingCubit extends Cubit<NowShowingState> {
  final MovieRepository _movieRepository;
  NowShowingCubit(this._movieRepository) : super(Initial());

  void emitNowShowingState() {
    emit(Loading());
    _movieRepository.getNowShowingMovies().then((result) {
      result.when(
          success: (data) => emit(Success(data)),
          failure: (e) => emit(Error(e)));
    });
  }
}
