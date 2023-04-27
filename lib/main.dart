import 'package:di_container_app_example/factories/di_container.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

abstract class AppFactory {
  Widget makeApp();
}

void main() {
  setupGetIt();
  final appFactrory = GetIt.instance<AppFactory>();
  final app = appFactrory.makeApp();
  runApp(app);
}
