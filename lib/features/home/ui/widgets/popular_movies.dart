import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common_widgets/rating_widget.dart';
import '../../../../core/common_widgets/section_widget.dart';
import '../../../../core/common_widgets/tag_widget.dart';
import '../../../../core/di/module.dart';
import '../../../../core/network/constants.dart';
import '../../../../core/routes/routes.dart';
import '../../../../core/themes/text_styles.dart';
import '../../logic/popular/popular_cubit.dart';
import '../../logic/popular/popular_state.dart';
import 'movie_date_release.dart';

class PopularMovies extends StatefulWidget {
  const PopularMovies({super.key});

  @override
  State<PopularMovies> createState() => _PopularMoviesState();
}

class _PopularMoviesState extends State<PopularMovies> {
  final ScrollController _scrollController = ScrollController();
  late PopularCubit _popularCubit;

  @override
  void initState() {
    super.initState();
    _popularCubit = getIt<PopularCubit>();
    _popularCubit.emitPopularState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _popularCubit.emitPopularState();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PopularCubit>(
        create: (context) => getIt<PopularCubit>()..emitPopularState(),
        child: Scaffold(
          body: Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 24.w),
            child: Column(
              children: [
                const SectionWidget('Popular', true),
                SizedBox(
                  height: 16.h,
                ),
                SizedBox(
                    width: 304.w,
                    child: BlocBuilder<PopularCubit, PopularState>(
                      builder: (context, state) {
                        if (state is Loading) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        } else if (state is Error) {
                          return Center(
                            child:
                                Text(state.e.message, style: TextStyles.error),
                          );
                        } else if (state is Success) {
                          return ListView.builder(
                            controller: _scrollController,
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: state.data.results.length,
                            itemBuilder: (context, index) {
                              final movie = state.data.results[index];
                              return Padding(
                                padding: EdgeInsets.only(bottom: 16.0.h),
                                child: GestureDetector(
                                  onTap: () => Navigator.pushNamed(
                                      context, Routes.details,
                                      arguments: movie),
                                  child: Container(
                                      height: 120.h,
                                      margin:
                                          EdgeInsetsDirectional.only(end: 16.w),
                                      child: Row(
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.network(
                                              '${Constants.imageBaseUrl}${movie.posterPath}',
                                              width: 85.w,
                                              height: 120.h,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 8.w,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                width: 150.w,
                                                child: Text(
                                                  movie.title,
                                                  style: TextStyles.movieTitle,
                                                  maxLines: 2,
                                                ),
                                              ),
                                              RatingWidget(movie.voteAverage),
                                              SizedBox(
                                                height: 8.h,
                                              ),
                                              TagWidget(movie.genreIds),
                                              SizedBox(
                                                height: 8.h,
                                              ),
                                              MovieDateRelease(movie)
                                            ],
                                          )
                                        ],
                                      )),
                                ),
                              );
                            },
                          );
                        } else {
                          return const SizedBox();
                        }
                      },
                    )),
              ],
            ),
          ),
          bottomNavigationBar: BlocBuilder<PopularCubit, PopularState>(
            builder: (context, state) {
              if (state is Loading) {
                return const LinearProgressIndicator();
              } else {
                return const SizedBox.shrink();
              }
            },
          ),
        ));
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
