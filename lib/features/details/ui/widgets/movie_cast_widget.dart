import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/di/module.dart';
import '../../../../core/network/constants.dart';
import '../../../../core/themes/text_styles.dart';
import '../../logic/cast_cubit/cast_cubit.dart';
import '../../logic/cast_cubit/cast_state.dart';
import '../../model/cast_response.dart';

class MovieCastWidget extends StatefulWidget {
  final int movieId;

  const MovieCastWidget(this.movieId, {super.key});

  @override
  State<MovieCastWidget> createState() => _MovieCastWidgetState();
}

class _MovieCastWidgetState extends State<MovieCastWidget> {
  @override
  void initState() {
    getIt<CastCubit>().emitCastState(widget.movieId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CastCubit, CastState>(
      builder: (context, state) {
        if (state is Loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is Error) {
          return Center(
            child: Text(
              state.error.message,
              style: TextStyles.error,
            ),
          );
        } else if (state is Loaded) {
          CastResponse response = state.castResponse as CastResponse;
          return Container(
            height: 120.h,
            margin: EdgeInsetsDirectional.only(end: 16.w),
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: response.cast.length,
              itemBuilder: (context, index) {
                final cast = response.cast[index];
                return Container(
                  padding: EdgeInsetsDirectional.only(end: 13.w),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          cast.profilePath != null
                              ? '${Constants.imageBaseUrl}${cast.profilePath}'
                              : 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png',
                          width: 72.w,
                          height: 76.h,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      SizedBox(
                        width: 72.w,
                        child: Text(
                          cast.name,
                          textAlign: TextAlign.center,
                          style: TextStyles.castName,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        }
        return Container();
      },
    );
  }
}
