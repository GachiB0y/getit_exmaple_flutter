import 'package:di_container_app_example/main.dart';
import 'package:di_container_app_example/main_navigation.dart';
import 'package:di_container_app_example/ui/widget/calculator_service.dart';
import 'package:di_container_app_example/ui/widget/example_view_model.dart';
import 'package:di_container_app_example/ui/widget/example_widget.dart';
import 'package:di_container_app_example/ui/widget/my_app.dart';
import 'package:di_container_app_example/ui/widget/summator.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void setupGetIt() {
  GetIt.instance.registerSingleton<ScreenFactory>(const ScreenFactoryDefault());
  GetIt.instance.registerSingleton<MainNavigation>(MainNavigationDefault());
  GetIt.instance.registerFactory<Summator>(() => const Summator());
  GetIt.instance.registerFactory<AppFactory>(() => const AppFactoryDefault());
  GetIt.instance.registerFactory<CalculatorSevice>(() => CalculatorSevice());
  GetIt.instance
      .registerFactory<ExampleViewModel>(() => ExamplePPetViewModel());
}

// class ServiceLocator {
//   static final instance = ServiceLocator._();
//   ServiceLocator._();

//   final MainNavigation mainNavigation = MainNavigationDefault();

//   Summator makeSummator() => const Summator();

//   CalculatorSevice makeCalculatorSevice() => CalculatorSevice();

//   ExampleViewModel makeExampleViewModel() => ExampleCalcViewModel();

//   Widget makeExmapleScreen() => ExampleWidget();
//   Widget makeApp() => MyApp();
// }

class ScreenFactoryDefault implements ScreenFactory {
  const ScreenFactoryDefault();
  @override
  Widget makeExmapleScreen() => ExampleWidget();
}

class AppFactoryDefault implements AppFactory {
  const AppFactoryDefault();
  @override
  Widget makeApp() => MyApp();
}
