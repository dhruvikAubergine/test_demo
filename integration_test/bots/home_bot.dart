import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class HomeBot {
  const HomeBot(this.tester);
  final WidgetTester tester;

  Future<void> findTitle() async {
    await tester.pumpAndSettle();
    expect(find.text('Test Demo'), findsOneWidget);
    sleep(const Duration(seconds: 1));
  }

  Future<void> scrollThePage({bool scrollUp = false}) async {
    final listFinder = find.byKey(const Key('singleChileScrollview'));

    if (scrollUp) {
      await tester.fling(listFinder, const Offset(0, 500), 10000);
      await tester.pumpAndSettle();

      expect(find.text('Test Demo'), findsOneWidget);
    } else {
      await tester.fling(listFinder, const Offset(0, -500), 10000);
      await tester.pumpAndSettle();

      expect(find.byKey(const Key('firstButton')), findsOneWidget);
    }
    sleep(const Duration(seconds: 1));
  }

  Future<void> clickFirstButton() async {
    final btnFinder = find.byKey(const Key('firstButton'));

    await tester.ensureVisible(btnFinder);
    await tester.tap(btnFinder);

    await tester.pumpAndSettle();
  }
}
