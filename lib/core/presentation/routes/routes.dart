import 'package:flutter_ui_challenges/core/data/models/route_model.dart';

import 'package:flutter_ui_challenges/src/pages/login_basic/login_basic.dart';

final routes = <RouteModel>[
  RouteModel(
      title: 'Food App',
      description: 'Prueba de desarrollo',
      child: const LoginBasic()),
  RouteModel(
      title: 'Food App',
      description: 'Prueba de desarrollo',
      child: const LoginBasic()),
  RouteModel(
      title: 'Login Basic',
      description: 'VIew Login Basic with ',
      child: const LoginBasic())
];
