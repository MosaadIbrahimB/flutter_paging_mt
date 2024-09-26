import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../../core/di/module.dart';
import '../../../../core/themes/text_styles.dart';
import '../../logic/trailer_cubit/trailer_cubit.dart';
import '../../logic/trailer_cubit/trailer_state.dart';

class MovieTrailerScreen extends StatefulWidget {
  const MovieTrailerScreen({super.key});

  @override
  State<MovieTrailerScreen> createState() => _MovieTrailerScreenState();
}

class _MovieTrailerScreenState extends State<MovieTrailerScreen> {
  late TrailerCubit trailerCubit;

  @override
  void initState() {
    trailerCubit = getIt<TrailerCubit>();
    super.initState();
  }

  @override
  void dispose() {
    //trailerCubit.youtubePlayerController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrailerCubit, TrailerState>(builder: (context, state) {
      if (state is Loading) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else if (state is Error) {
        return Center(
          child: Text(state.error.message, style: TextStyles.error),
        );
      } else if (state is Loaded) {
        return state.trailerResponse.trailers == null
            ? const SizedBox()
            // : _buildTrailerPlayer();
            : SizedBox();
      } else {
        return const SizedBox();
      }
    });
  }

// Widget _buildTrailerPlayer() {
//   return YoutubePlayerBuilder(
//     builder: (context, player) => player,
//     player: YoutubePlayer(
//       controller: trailerCubit.youtubePlayerController!,
//       showVideoProgressIndicator: true,
//     ),
//   );
// }
}
