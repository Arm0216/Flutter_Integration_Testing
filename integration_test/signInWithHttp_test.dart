import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import '../test/pages/formSamples_page.dart';

void main() {
  group('Sign In With HTTP widget', () {
    final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized()
    as IntegrationTestWidgetsFlutterBinding;
    binding.framePolicy = LiveTestWidgetsFlutterBindingFramePolicy.fullyLive;

    testWidgets('Visit to "Sign In with HTTP" widget', (tester) async {
      await FormSamples().clickOnSignInWithHttpButton(tester);
      expect(find.text("Sign in"), findsOneWidget);
    });
  });
}