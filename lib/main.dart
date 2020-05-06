import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'injection.dart';
import 'presentation/core/app_widget.dart';

void main() {
  // prod is the only environment we are using for this project.
  configureInjection(Environment.prod);
  runApp(AppWidget());

  // linter checks
  // String someMethod(int x) {
  //   x = 5;
  // }
}
