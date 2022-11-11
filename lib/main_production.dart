// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:test_demo/app/app.dart';
import 'package:test_demo/bootstrap.dart';

Future<void> main() async {
  await bootstrap(() => const App());
}
