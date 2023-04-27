import 'package:di_container_app_example/ui/widget/my_app.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

abstract class MainNavigationRouteName {
  static const example = '/';
}

abstract class ScreenFactory {
  Widget makeExmapleScreen();
}

class MainNavigationDefault implements MainNavigation {
  final ScreenFactory screenFactory = GetIt.instance<ScreenFactory>();

  MainNavigationDefault();

  @override
  Map<String, Widget Function(BuildContext)> makeRoute() =>
      <String, Widget Function(BuildContext)>{
        MainNavigationRouteName.example: (_) =>
            screenFactory.makeExmapleScreen(),
      };

  @override
  Route<Object> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      default:
        const widget = Text('NAvigation error!!');
        return MaterialPageRoute(builder: (_) => widget);
    }
  }
}
