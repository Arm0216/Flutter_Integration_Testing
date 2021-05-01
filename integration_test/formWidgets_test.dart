import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
// import '../test/pages/formWidgets_page.dart';
import 'package:form_app/main.dart';

void main() {
  // FormSamples formSamples = new FormSamples();
  // FormWidgets formWidgets = new FormWidgets();

  group('Form widgets', () {
    final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized()
    as IntegrationTestWidgetsFlutterBinding;
    binding.framePolicy = LiveTestWidgetsFlutterBindingFramePolicy.fullyLive;


    testWidgets('Visit to "Form widgets" widget', (tester) async {
      var formWidgetsButton = find.text('Form widgets');
      final formWidget = find.text("Form widgets");
      await tester.pumpWidget(FormApp());
      await tester.tap(formWidgetsButton);
      await tester.pumpAndSettle(Duration(seconds: 1));
      expect(formWidget, findsOneWidget);
    });

    // testWidgets('Drop Slider Estimated Value', (tester) async {
    //   await formSamples.clickOnFormWidgetsButton(tester);
    //   await formWidgets.dropSliderEstimatedValue(tester);
    //   expect(formWidgets.moneySlider, findsOneWidget);
    // });
    //
    // testWidgets('Verify Enable Feature', (tester) async {
    //   await formSamples.clickOnFormWidgetsButton(tester);
    //   await formWidgets.clickOnSwitchFromEnableFeature(tester);
    //   expect(formWidgets.activeSwitchEnableFeature, findsOneWidget);
    // });
    //
    // testWidgets('Verify Edit Date button functionality', (tester) async {
    //   await formSamples.clickOnFormWidgetsButton(tester);
    //   await formWidgets.clickOnEditDateButton(tester);
    //   expect(formWidgets.dayNine, findsOneWidget);
    // });
    //
    // testWidgets('Make sure the button is selected', (tester) async {
    //   await formSamples.clickOnFormWidgetsButton(tester);
    //   await formWidgets.clickOnEditDateButton(tester);
    //   await formWidgets.selectDayAndClickOnOkButton(tester);
    //   expect(formWidgets.dayMonthYear, findsOneWidget);
    // });
  });
}