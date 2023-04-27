import 'package:di_container_app_example/ui/widget/summator.dart';
import 'package:get_it/get_it.dart';

enum CalculatorSeviceOperation { summ }

class CalculatorSevice {
  final Summator summator = GetIt.instance<Summator>();

  CalculatorSevice();

  int calculate(int a, int b, CalculatorSeviceOperation operation) {
    if (operation == CalculatorSeviceOperation.summ) {
      return summator.sum(a, b);
    } else {
      return 0;
    }
  }
}
