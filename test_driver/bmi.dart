import 'package:flutter_driver/driver_extension.dart';
import 'package:bmi_calculator/main.dart' as bmi;

void main() {
  // This line enables the extension.
  enableFlutterDriverExtension();

  // Call the `main()` function of the app, or call `runApp` with
  // any widget you are interested in testing.
  bmi.main();
}