import 'package:flutter/material.dart';

import '../../features/details/ui/screens/details_screen.dart';
import '../../features/details/ui/screens/movie_trailer_screen.dart';
import '../../features/home/model/movie_response.dart';
import '../../features/home/ui/screens/home_screen.dart';
import 'routes.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );

      case Routes.details:
        return MaterialPageRoute(
          builder: (context) => DetailsScreen(settings.arguments as Result),
        );
      case Routes.trailer:
        return MaterialPageRoute(
            builder: (context) => const MovieTrailerScreen(),
            settings: settings);
      default:
        return _undefineRoute();
    }
  }

  static Route<dynamic> _undefineRoute() {
    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Center(
          child: Text('No route found'),
        ),
      ),
    );
  }
}
