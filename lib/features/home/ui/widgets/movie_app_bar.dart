import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/themes/text_styles.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';

class MovieAppBar extends StatelessWidget {
  const MovieAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.symmetric(
        horizontal: 24.w,
        vertical: 18.h,
      ),
      decoration: const BoxDecoration(
        color: ColorName.whiteColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Assets.images.menu.svg(),
          Text(
            'FilmKu',
            style: TextStyles.title,
          ),
          Assets.images.notif.svg()
        ],
      ),
    );
  }
}
