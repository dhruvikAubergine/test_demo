import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_demo/pages/home_page.dart';

void main() {
  testWidgets('test textField widgets', (WidgetTester tester) async {
    //find all widgets
    final firstField = find.byKey(const Key('firstField'));
    final secondField = find.byKey(const Key('secondField'));

    //excute the actual test
    await tester.pumpWidget(const MaterialApp(home: HomePage()));
    await tester.enterText(firstField, '12');
    await tester.enterText(secondField, '32');
    await tester.pump();

    //check outputs
    expect(find.text('12'), findsOneWidget);
    expect(find.text('32'), findsOneWidget);
  });
}
