import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/themes/text_styles.dart';
import '../../../home/model/movie_response.dart';

class MovieInfoWidget extends StatelessWidget {
  final Result movie;

  const MovieInfoWidget(this.movie, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Length',
              style: TextStyles.rating,
            ),
            SizedBox(
              height: 4.h,
            ),
            Text(movie.releaseDate),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Language',
              style: TextStyles.rating,
            ),
            SizedBox(
              height: 4.h,
            ),
            Text(movie.originalLanguage),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Rating',
              style: TextStyles.rating,
            ),
            SizedBox(
              height: 4.h,
            ),
            Text('${movie.voteAverage}'),
          ],
        ),
      ],
    );
  }
}
