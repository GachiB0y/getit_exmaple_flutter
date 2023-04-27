import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

abstract class MainNavigation {
  Map<String, Widget Function(BuildContext)> makeRoute();
  Route<Object> onGenerateRoute(RouteSettings settings);
}

class MyApp extends StatelessWidget {
  final MainNavigation mainNavigation = GetIt.instance<MainNavigation>();
  MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: mainNavigation.makeRoute(),
        onGenerateRoute: mainNavigation.onGenerateRoute);
  }
}
