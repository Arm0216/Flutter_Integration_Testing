import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:form_app/src/form_widgets.dart';

void main() {
  group('Home Page Widget Tests', () {
    testWidgets('Testing if ListView shows up', (tester) async {
      await tester.pumpWidget(_FormWidgetsDemoState());
      expect(find.byType(ListView), findsOneWidget);
    });
  });
}
