import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:test_demo/main_production.dart' as app;

import 'bots/home_bot.dart';
import 'bots/second_page_bot.dart';

void main() {
  HomeBot homeBot;
  SecondPageBot secondPageBot;

  group('Integration test', () {
    final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized()
      ..framePolicy = LiveTestWidgetsFlutterBindingFramePolicy.fullyLive
      ..testTextInput.register();

    testWidgets('test demo app', (WidgetTester tester) async {
      await app.main();
      await tester.pumpAndSettle();

      homeBot = HomeBot(tester);
      secondPageBot = SecondPageBot(tester);

      await homeBot.findTitle();
      await binding.watchPerformance(
        homeBot.scrollThePage,
        reportKey: 'scroll_timeline',
      );
      await homeBot.clickFirstButton();

      await secondPageBot.findTitle();
      await secondPageBot.clickSecondButton();

      await homeBot.scrollThePage(scrollUp: true);
    });
  });
}
