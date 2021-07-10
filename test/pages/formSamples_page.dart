import 'package:flutter_test/flutter_test.dart';
import 'package:form_app/main.dart';
export '../../integration_test/formWidgets_test.dart';


class FormSamples{
  var signInWithHttpButton = find.text('Sign in with HTTP');
  var formWidgetsButton = find.text('Form widgets');

  Future<void> clickOnSignInWithHttpButton(tester) async{
    await tester.pumpWidget(FormApp());
    await tester.tap(signInWithHttpButton);
    await tester.pumpAndSettle(Duration(seconds: 1));
  }

  Future<void> clickOnFormWidgetsButton(tester) async{
    await tester.pumpWidget(FormApp());
    await tester.tap(formWidgetsButton);
    await tester.pumpAndSettle(Duration(seconds: 1));
  }
}
