// Imports the Flutter Driver API.
import 'dart:async';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('BMI Calculator App', () {
    // First, define the Finders and use them to locate widgets from the
    // test suite. Note: the Strings provided to the `byValueKey` method must
    // be the same as the Strings we used for the Keys in step 1.

    final maleCardFinder = find.byValueKey('MaleCard');
    final femaleCardFinder = find.byValueKey('FemaleCard');
    final weightMinusButtonFinder = find.byValueKey('weightMinusButton');
    final weightPlusButtonFinder = find.byValueKey('weightPlusButton');
    final ageMinusButtonFinder = find.byValueKey('ageMinusButton');
    final agePlusButtonFinder = find.byValueKey('agePlusButton');
    final bottomResultKeyFinder = find.byValueKey("bottomResultKey");
    final slideFinder = find.byValueKey('slide');
    final reCalculateKeyFinder = find.byValueKey('reCalculateKey');
    final initialWeightFinder = find.byValueKey('key: Key("initHeight"),');



    FlutterDriver driver;

    // Connect to the Flutter driver before running any tests.
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    // Close the connection to the driver after the tests have completed.
    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('Male card tapped! ', () async {
      // First, tap the button.
      await driver.tap(maleCardFinder);
      await new Future.delayed(const Duration(seconds: 3));
    });

    test('Female card tapped! ', () async {
      // First, tap the button.
      await driver.tap(femaleCardFinder);
      await new Future.delayed(const Duration(seconds: 2));
    });

    test('Use the slider! ', () async {
      // First, tap the button.
        await (driver.tap(slideFinder));
        await new Future.delayed(const Duration(seconds: 2));
    });

    test('Weight decrease button tapped ! ', () async {

      for (int i = 0; i < 5; i++) {
        // Secondly, tap the weight decrease button 5 times.
        await driver.tap(weightMinusButtonFinder);
        await new Future.delayed(const Duration(seconds: 1));
      }
    });

    test('Age increase button tapped ! ', () async {
      for (int i = 0; i < 3; i++) {
        // Then, tap the age increase button 3 times.
        await driver.tap(agePlusButtonFinder);
        await new Future.delayed(const Duration(seconds: 1));
      }
    });


    test('Calculate and go to the result page! ', () async {
        // Tap the calculate button to go to the result page.
        await driver.tap(bottomResultKeyFinder);

        driver.requestData(bottomResultKeyFinder.toString());

    });

    test('go to the home page! ', () async {
      await new Future.delayed(const Duration(seconds: 3));
      // Finally, tap the re calculate button to go to the home page.
      await driver.tap(reCalculateKeyFinder);

    });


  });
}