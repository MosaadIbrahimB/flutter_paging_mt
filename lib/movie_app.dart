import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/module.dart';
import 'core/routes/app_router.dart';
import 'core/routes/routes.dart';
import 'features/details/logic/cast_cubit/cast_cubit.dart';
import 'features/details/logic/trailer_cubit/trailer_cubit.dart';

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        splitScreenMode: true,
        minTextAdapt: true,
        builder: (context, child) => MultiBlocProvider(
              providers: [
                BlocProvider<CastCubit>(
                    create: (context) => getIt<CastCubit>()),
                BlocProvider<TrailerCubit>(
                    create: (context) => getIt<TrailerCubit>()),
              ],
              child: MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                  useMaterial3: true,
                ),
                initialRoute: Routes.home,
                onGenerateRoute: AppRouter.onGenerateRoute,
              ),
            ));
  }
}
