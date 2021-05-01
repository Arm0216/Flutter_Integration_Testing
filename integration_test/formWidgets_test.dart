// import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import '../test/pages/formSamples_page.dart';
import '../test/pages/formWidgets_page.dart';

void main() {
  FormSamples formSamples = new FormSamples();
  FormWidgets formWidgets = new FormWidgets();

  group('Form widgets', () {
    final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized()
    as IntegrationTestWidgetsFlutterBinding;
    binding.framePolicy = LiveTestWidgetsFlutterBindingFramePolicy.fullyLive;

    testWidgets('Visit to "Form widgets" widget', (tester) async {
      await formSamples.clickOnFormWidgetsButton(tester);
      expect(formWidgets.formWidget, findsOneWidget);
    });

    // testWidgets('Drag Slider Estimated Value', (tester) async {
    //   await formSamples.clickOnFormWidgetsButton(tester);
    //   await formWidgets.dragSliderEstimatedValue(tester);
    //   expect(formWidgets.moneySlider, findsOneWidget);
    // });

    testWidgets('Verify Enable Feature', (tester) async {
      await formSamples.clickOnFormWidgetsButton(tester);
      await formWidgets.clickOnSwitchFromEnableFeature(tester);
      expect(formWidgets.activeSwitchEnableFeature, findsOneWidget);
    });

    testWidgets('Verify Edit Date button functionality', (tester) async {
      await formSamples.clickOnFormWidgetsButton(tester);
      await formWidgets.clickOnEditDateButton(tester);
      expect(formWidgets.dayNine, findsOneWidget);
    });

    testWidgets('Make sure the button is selected', (tester) async {
      await formSamples.clickOnFormWidgetsButton(tester);
      await formWidgets.clickOnEditDateButton(tester);
      await formWidgets.selectDayAndClickOnOkButton(tester);
      expect(formWidgets.dayMonthYear, findsOneWidget);
    });
  });
}