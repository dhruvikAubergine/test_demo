import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class SecondPageBot {
  const SecondPageBot(this.tester);
  final WidgetTester tester;

  Future<void> findTitle() async {
    await tester.pumpAndSettle();
    expect(find.text('Second Page'), findsOneWidget);
    sleep(const Duration(seconds: 1));
  }

  Future<void> clickSecondButton() async {
    final btnFinder = find.byKey(const Key('secondButton'));

    await tester.ensureVisible(btnFinder);
    await tester.tap(btnFinder);

    await tester.pumpAndSettle();
  }
}
