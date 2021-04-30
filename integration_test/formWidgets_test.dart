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
      expect(find.text("Form widgets"), findsOneWidget);
    });
  });
}