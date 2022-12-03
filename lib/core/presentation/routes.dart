import 'package:flutter_ui_challenges/core/data/models/route_model.dart';

import 'package:flutter_ui_challenges/src/pages/login_basic/login_basic.dart';
import 'package:flutter_ui_challenges/src/pages/login_freebie/screens/sign_up_screen.dart';

final routes = <RouteModel>[
  RouteModel(
      title: 'Food App',
      description:
          'UI login with a lot of animations and weird bottons and colors red challenges',
      child: const LoginBasic(),
      category: ChallengeCategory.appClone,
      deviceType: DesignDeviceType.mobile,
      designSource: {
        "scheme": "https",
        "host": 'www.linkedin.com',
        "path": 'in/michael-caicedo-3a89bb183/'
      }),
  RouteModel(
      title: 'Login Freebie',
      description: '',
      deviceType: DesignDeviceType.mobile,
      child: const SignUpScreen(),
      designSource: {
        "scheme": "https",
        "host": 'www.uplabs.com',
        "path": 'posts/login-page-eeea9dc8-b251-435e-8b27-544a6d977cbf/'
      }),
  RouteModel(
    title: 'Food App',
    deviceType: DesignDeviceType.mobile,
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
