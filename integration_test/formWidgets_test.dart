import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import '../test/pages/formSamples_page.dart';
import '../test/pages/formWidgets_page.dart';

void main() {
  group('Form widgets', () {
    final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized()
    as IntegrationTestWidgetsFlutterBinding;
    binding.framePolicy = LiveTestWidgetsFlutterBindingFramePolicy.fullyLive;

    testWidgets('Visit to "Form widgets" widget', (tester) async {
      await FormSamples().clickOnFormWidgetsButton(tester);
      expect(find.text("Form widgets"), findsOneWidget);
    });

    testWidgets('Drop Slider Estimated Value', (tester) async {
      await FormSamples().clickOnFormWidgetsButton(tester);
      await FormWidgets().dropSliderEstimatedValue(tester);
      expect(FormWidgets().moneySlider, findsOneWidget);
    });

    testWidgets('Verify Enable Feature', (tester) async {
      await FormSamples().clickOnFormWidgetsButton(tester);
      await FormWidgets().clickOnSwitchFromEnableFeature(tester);
      expect(FormWidgets().activeSwitchEnableFeature, findsOneWidget);
    });

    testWidgets('Verify Edit Date button functionality', (tester) async {
      await FormSamples().clickOnFormWidgetsButton(tester);
      await FormWidgets().clickOnEditDateButton(tester);
      expect(FormWidgets().dayNine, findsOneWidget);
    });

    testWidgets('Make sure the button is selected', (tester) async {
      await FormSamples().clickOnFormWidgetsButton(tester);
      await FormWidgets().clickOnEditDateButton(tester);
      await FormWidgets().selectDayAndClickOnOkButton(tester);
      expect(FormWidgets().dayMonthYear, findsOneWidget);
    });
  });
}