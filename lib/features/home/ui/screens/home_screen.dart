import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../gen/colors.gen.dart';
import '../widgets/movie_app_bar.dart';
import '../widgets/now_showing_movies.dart';
import '../widgets/popular_movies.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MovieAppBar(),
              SizedBox(
                height: 16.h,
              ),
              const NowShowingMovies(),
              SizedBox(
                height: 16.h,
              ),
              const PopularMovies(),
            ],
          ),
        ),
      ),
    );
  }
}
