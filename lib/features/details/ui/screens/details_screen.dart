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
import '../../../../gen/assets.gen.dart';
import '../../../home/model/movie_response.dart';
import '../../logic/trailer_cubit/trailer_cubit.dart';
import '../widgets/movie_cast_widget.dart';
import '../widgets/movie_info_widget.dart';

class DetailsScreen extends StatefulWidget {
  final Result movie;
  const DetailsScreen(this.movie, {super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Result movie = ModalRoute
    //     .of(context)
    //     ?.settings
    //     .arguments as Result;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250.h,
            pinned: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              background: GestureDetector(
                onTap: () {
                  getIt<TrailerCubit>().emitTrailerStates(widget.movie.id);
                  Navigator.pushNamed(context, Routes.trailer,
                      arguments: widget.movie.id);
                },
                child: Stack(
                  fit: StackFit.passthrough,
                  children: [
                    Image.network(
                        '${Constants.imageBaseUrl}${widget.movie.backdropPath}',
                        fit: BoxFit.cover),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Assets.images.play.svg(width: 50.w, height: 50.h),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            'Play Trailer',
                            style: TextStyles.play,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsetsDirectional.all(24.r),
            sliver: SliverList(
              delegate: SliverChildListDelegate(<Widget>[
                Text(widget.movie.title, style: TextStyles.movieDetailedTitle),
                SizedBox(
                  height: 8.h,
                ),
                RatingWidget(widget.movie.voteAverage),
                SizedBox(
                  height: 16.h,
                ),
                TagWidget(widget.movie.genreIds),
                SizedBox(
                  height: 16.h,
                ),
                MovieInfoWidget(widget.movie),
                SizedBox(
                  height: 24.h,
                ),
                const SectionWidget('Description', false),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  widget.movie.overview,
                  style: TextStyles.rating,
                ),
                SizedBox(
                  height: 24.h,
                ),
                const SectionWidget('Cast', true),
                SizedBox(
                  height: 16.h,
                ),
                MovieCastWidget(widget.movie.id),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
