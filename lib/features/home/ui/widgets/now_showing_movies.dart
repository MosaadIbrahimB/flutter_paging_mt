import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common_widgets/rating_widget.dart';
import '../../../../core/common_widgets/section_widget.dart';
import '../../../../core/di/module.dart';
import '../../../../core/network/constants.dart';
import '../../../../core/routes/routes.dart';
import '../../../../core/themes/text_styles.dart';
import '../../logic/now_showing/now_showing_cubit.dart';
import '../../logic/now_showing/now_showing_state.dart';
import '../../model/movie_response.dart';

class NowShowingMovies extends StatelessWidget {
  const NowShowingMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NowShowingCubit>(
      create: (context) => getIt<NowShowingCubit>()..emitNowShowingState(),
      child: Padding(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 24.w),
        child: SizedBox(
            height: 360,
            width: double.infinity,
            child: Column(
              children: [
                const SectionWidget('Now Showing', true),
                SizedBox(
                  height: 16.h,
                ),
                SizedBox(
                  height: 283.h,
                  child: BlocBuilder<NowShowingCubit, NowShowingState>(
                    builder: (context, state) {
                      if (state is Loading) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (state is Error) {
                        return Center(
                          child: Text(
                            state.e.message,
                            style: TextStyles.error,
                          ),
                        );
                      } else if (state is Success) {
                        MovieResponse response = state.data as MovieResponse;
                        List<Result> results = response.results;
                        return ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: results.length,
                          itemBuilder: (context, index) {
                            final movie = results[index];
                            return GestureDetector(
                              onTap: () => Navigator.pushNamed(
                                  context, Routes.details,
                                  arguments: movie),
                              child: Container(
                                width: 140.w,
                                margin: EdgeInsetsDirectional.only(end: 16.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.network(
                                        '${Constants.imageBaseUrl}${movie.posterPath}',
                                        height: 212.h,
                                        width: 140.w,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8.h,
                                    ),
                                    Text(
                                      movie.title,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyles.movieTitle,
                                    ),
                                    RatingWidget(movie.voteAverage),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      } else {
                        return const SizedBox.shrink();
                      }
                    },
                  ),
                )
              ],
            )),
      ),
    );
  }
}
