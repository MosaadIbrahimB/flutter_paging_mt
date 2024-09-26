import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paging/features/details/logic/trailer_cubit/trailer_state.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../model/trailer_response.dart';
import '../../repository/movie_details_repository.dart';

class TrailerCubit extends Cubit<TrailerState> {
  final MovieDetailsRepository _movieDetailsRepository;

  TrailerCubit(this._movieDetailsRepository) : super(const Initial());
  // YoutubePlayerController? youtubePlayerController;

  Future<void> emitTrailerStates(int movieId) async {
    emit(const Loading());
    await _movieDetailsRepository.getMovieTrailer(movieId).then(
      (response) {
        response.when(
          success: (data) {
            //   initializeController(data);
            emit(Loaded(data));
          },
          failure: (e) => emit(Error(e)),
        );
      },
    );
  }

  // void initializeController(TrailerResponse data) {
  //   if (data.trailers == null) {
  //     return;
  //   }
  //   try {
  //     var element = data.trailers?.where(
  //       (element) => element.type == "trailer",
  //     );
  //     print(element?.first);
  //     youtubePlayerController = YoutubePlayerController(
  //       initialVideoId: element!.first.key,
  //       flags: const YoutubePlayerFlags(autoPlay: true, mute: false),
  //     );
  //   } catch (e) {
  //     youtubePlayerController = YoutubePlayerController(
  //       initialVideoId: data.trailers!.first.key,
  //       flags: const YoutubePlayerFlags(autoPlay: true, mute: false),
  //     );
  //   }
  // }
}
