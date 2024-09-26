import 'package:flutter_bloc/flutter_bloc.dart';

import '../../repository/movie_details_repository.dart';
import 'cast_state.dart';

class CastCubit extends Cubit<CastState> {
  final MovieDetailsRepository _movieDetailsRepository;

  CastCubit(this._movieDetailsRepository) : super(const Initial());

  void emitCastState(int movieId) {
    emit(const Loading());
    _movieDetailsRepository.getMovieCast(movieId).then(
      (response) {
        response.when(
          success: (data) => emit(Loaded(data)),
          failure: (e) => emit(Error(e)),
        );
      },
    );
  }
}
