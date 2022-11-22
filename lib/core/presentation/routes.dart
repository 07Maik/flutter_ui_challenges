import 'package:flutter_ui_challenges/core/data/models/route_model.dart';

import 'package:flutter_ui_challenges/src/pages/login_basic/login_basic.dart';

final routes = <RouteModel>[
  RouteModel(
    title: 'Food App',
    description:
        'UI login with a lot of animations and weird bottons and colors red challenges',
    child: const LoginBasic(),
    category: ChallengeCategory.appClone,
    designSource: {
      "scheme": "https",
      "host": 'www.linkedin.com',
      "path": 'in/michael-caicedo-3a89bb183/'
    },
  ),
  RouteModel(
    title: 'Food App',
    description:
        'UI login with a lot of animations and weird bottons and colors red challenges',
    child: const LoginBasic(),
  ),
  RouteModel(
    title: 'Food App',
    description:
        'UI login with a lot of animations and weird bottons and colors red challenges',
    child: const LoginBasic(),
    designSource: {
      "scheme": "https",
      "host": 'www.linkedin.com',
      "path": 'in/michael-caicedo-3a89bb183/'
    },
  )
];
