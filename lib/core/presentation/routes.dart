import 'package:flutter_ui_challenges/core/data/models/route_model.dart';

import 'package:flutter_ui_challenges/src/pages/basic_ecommerce/screens/checkout/checkout_screen.dart'
    as basic_ecommerce;

import 'package:flutter_ui_challenges/src/pages/basic_ecommerce2/screens/confirm_order_screen.dart/confirm_order_screen.dart'
    as basic_ecommerce2;

import 'package:flutter_ui_challenges/src/pages/chat_app/screens/home/chat_list_screen.dart'
    as chat_app;

import 'package:flutter_ui_challenges/src/pages/food_app/screens/login/login_screen.dart'
    as food_app;

import 'package:flutter_ui_challenges/src/pages/login_freebie/screens/sign_up/sign_up_screen.dart'
    as login_freebie;

import 'package:flutter_ui_challenges/src/pages/sushi_app/screens/home/home_screen.dart'
    as sushi_app;

import 'package:flutter_ui_challenges/src/pages/task_todolist/screens/task_screen.dart'
    as task_todolist;

import 'package:flutter_ui_challenges/src/pages/clothes_shopping/screens/home/home_screen.dart'
    as clothes_shopping;

import 'package:flutter_ui_challenges/src/clone_apps/basic_calculator_ios/screens/home/calculator_screen.dart'
    as calculator_ios;

import 'package:flutter_ui_challenges/src/clone_apps/clock_MIUI/screens/home/home_screen.dart'
    as clock_miui;

import 'package:flutter_ui_challenges/src/pages/basic_login/screens/login/login_screen.dart'
    as login_basic;

import 'package:flutter_ui_challenges/src/pages/basic_login2/screens/login/login_screen.dart'
    as login_basic2;

final routes = <RouteModel>[
  RouteModel(
    title: 'Basic Login',
    description: 'A view with simple design of login screen',
    designSource: {
      "scheme": "https",
      "host": 'github.com',
      "path":
          'lohanidamodar/flutter_ui_challenges/blob/master/screenshots/login6.png/'
    },
    child: const login_basic.LoginScreen(),
  ),
  RouteModel(
    title: 'Basic Login 2',
    description: 'A view with waves on the login screen',
    designSource: {
      "scheme": "https",
      "host": 'github.com',
      "path":
          'lohanidamodar/flutter_ui_challenges/blob/master/screenshots/login7.png/'
    },
    child: const login_basic2.LoginScreen(),
  ),
  RouteModel(
    title: 'Basic ecommerce',
    description:
        'A view with a simple and beautiful design to choose the payments options.',
    designSource: {
      "scheme": "https",
      "host": 'github.com',
      "path":
          'lohanidamodar/flutter_ui_challenges/blob/master/screenshots/checkout1.png/'
    },
    child: const basic_ecommerce.CheckoutScreen(),
  ),
  RouteModel(
    title: 'Basic ecommerce 2',
    description: 'A view with a simple and beautiful design to confirm order.',
    designSource: {
      "scheme": "https",
      "host": 'github.com',
      "path":
          'lohanidamodar/flutter_ui_challenges/blob/master/screenshots/confirm_order1.png/'
    },
    child: const basic_ecommerce2.ConfirmOrderScreen(),
  ),

  RouteModel(
    title: 'Login Freebie',
    description:
        'A view with a slider on signup screen and other simple view for login.',
    designSource: {
      "scheme": "https",
      "host": 'www.uplabs.com',
      "path": 'posts/login-page-eeea9dc8-b251-435e-8b27-544a6d977cbf/'
    },
    child: const login_freebie.SignUpScreen(),
  ),
  RouteModel(
    title: 'Food App',
    description:
        'Beautiful views for fast food app with strange shapes and creative design.',
    designSource: {
      "scheme": "https",
      "host": 'www.uplabs.com',
      "path": 'posts/food-app-design-50840462-7886-4a22-8981-fb3da7398b4e/'
    },
    child: const food_app.LoginScreen(),
  ),
  RouteModel(
    title: 'Sushi App',
    description:
        'Views with some animations and transitions to see sushi meals.',
    designSource: {
      "scheme": "https",
      "host": 'www.uplabs.com',
      "path": 'posts/app-621360e3-6f40-4b68-ac1d-b94b71833ccf/'
    },
    child: const sushi_app.HomePage(),
  ),
  RouteModel(
    title: 'Chat App',
    description: 'Two views with basic screens of a Chat.',
    designSource: {
      "scheme": "https",
      "host": 'www.uplabs.com',
      "path": 'posts/chat-app-design-f094e061-0fc1-4bbd-9424-9e5aaf3fbc5c/'
    },
    child: const chat_app.ChatListScreen(),
  ),
  RouteModel(
    title: 'Task TodoList',
    description:
        'A view with design basic TodoList using Provider as state manager.',
    designSource: {
      "scheme": "https",
      "host": 'www.uplabs.com',
      "path": 'posts/task-todolist/'
    },
    child: const task_todolist.TaskScreen(),
  ),
  RouteModel(
    title: 'Clothing Shopping',
    description: 'Views with beautiful design to see clothes to buy.',
    designSource: {
      "scheme": "https",
      "host": 'dribbble.com',
      "path": 'shots/19944979-Cloths-Shopping-App-Design/'
    },
    child: const clothes_shopping.HomeScreen(),
  ),

  // Clone Apps
  RouteModel(
    title: 'Basic Calculator IOS',
    category: ChallengeCategory.appClone,
    description: 'App Basic Calculator IOS 16 using Getx as state manager.',
    child: calculator_ios.CalculatorScreen(),
  ),
  RouteModel(
    title: 'Clock MIUI',
    category: ChallengeCategory.appClone,
    description:
        'Stopwatch of app Clock MIUI 12 using Provider as state manager.',
    child: const clock_miui.HomeScreen(),
  ),
];
