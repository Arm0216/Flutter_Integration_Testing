import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_app/main.dart';
export '../../integration_test/formWidgets_test.dart';

class FormWidgets{
  final estimatedValue = find.byType(Slider);
  final brushedTeeth = find.byType(Checkbox);
  final formWidget = find.text("Form widgets");
  final editDate = find.text('Edit');
  final titleAbout = find.text('About');
  final verifyInputDescription = find.text('Saaasssddd');
  final inputTitle = find.widgetWithText(InputDecorator, 'Title');
  final inputDescription = find.widgetWithText(InputDecorator, 'Description');
  final moneySlider = find.text('\$500');
  final dayNine = find.text("9");
  final dayMonthYear = find.text("5/9/2021");
  final okButtonFromDateWidget = find.text("OK");
  final switchEnableFeature = find.byType(Switch);
  final activeSwitchEnableFeature = find.byWidgetPredicate((widget) => widget is Switch && widget.value == true);
  final activeBrushedTeethCheckBox = find.byWidgetPredicate((widget) => widget is Checkbox && widget.value == true);

  Future<void> dragSliderEstimatedValue(tester) async{
    await tester.pumpWidget(FormApp());
    await tester.drag(estimatedValue, const Offset(200, 0));
    await tester.pumpAndSettle(Duration(seconds: 1));
  }

  Future<void> clickOnSwitchFromEnableFeature(tester) async{
    await tester.pumpWidget(FormApp());
    await tester.tap(switchEnableFeature);
    await tester.pumpAndSettle(Duration(seconds: 1));
  }

  Future<void> clickOnBrushedTeethCheckBox(tester) async{
    await tester.pumpWidget(FormApp());
    await tester.tap(brushedTeeth);
    await tester.pumpAndSettle(Duration(seconds: 1));
  }

  Future<void> clickOnEditDateButton(tester) async{
    await tester.pumpWidget(FormApp());
    await tester.tap(editDate);
    await tester.pumpAndSettle(Duration(seconds: 1));
  }

  Future<void> selectDayAndClickOnOkButton(tester) async{
    await tester.pumpWidget(FormApp());
    await tester.tap(dayNine);
    await tester.tap(okButtonFromDateWidget);
    await tester.pumpAndSettle(Duration(seconds: 1));
  }

  Future<void> enterTextInTitleField(tester) async{
    await tester.pumpWidget(FormApp());
    await tester.enterText(inputTitle, 'About');
    await tester.pumpAndSettle(Duration(seconds: 1));
  }

  Future<void> enterTextInDescriptionField(tester) async{
    await tester.pumpWidget(FormApp());
    await tester.enterText(inputDescription, 'Saaasssddd');
    await tester.pumpAndSettle(Duration(seconds: 1));
  }
}