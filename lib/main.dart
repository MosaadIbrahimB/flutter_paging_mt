import 'package:flutter/material.dart';

import 'core/di/module.dart';
import 'movie_app.dart';

void main() {
  setupDependencies();
  runApp(const MovieApp());
}
