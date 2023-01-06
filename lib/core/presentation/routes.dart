import 'package:flutter_ui_challenges/core/data/models/route_model.dart';

import 'package:flutter_ui_challenges/src/pages/chat_app/screens/chat_list_screen.dart'
    as chat_app;

import 'package:flutter_ui_challenges/src/pages/food_app/screens/login_screen.dart'
    as food_app;

import 'package:flutter_ui_challenges/src/pages/login_freebie/screens/sign_up_screen.dart'
    as login_freebie;

import 'package:flutter_ui_challenges/src/pages/sushi_app/screens/home_screen.dart'
    as sushi_app;

import 'package:flutter_ui_challenges/src/pages/task_todolist/screens/task_screen.dart'
    as task_todolist;

import 'package:flutter_ui_challenges/src/pages/clothes_shopping/screens/home_screen.dart'
    as clothes_shopping;

final routes = <RouteModel>[
  RouteModel(
    title: 'Login Freebie',
    description: '',
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
        'There are three screens: one to splash screen, one to make login and one to see the food menu options.',
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
        'There are three screens: one to splash screen, one to make login and one to see the food menu options.',
    designSource: {
      "scheme": "https",
      "host": 'www.uplabs.com',
      "path": 'posts/app-621360e3-6f40-4b68-ac1d-b94b71833ccf/'
    },
    child: const sushi_app.HomePage(),
  ),
  RouteModel(
    title: 'Chat App',
    description:
        'There are three screens: one to splash screen, one to make login and one to see the food menu options.',
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
        'There are three screens: one to splash screen, one to make login and one to see the food menu options.',
    designSource: {
      "scheme": "https",
      "host": 'www.uplabs.com',
      "path": 'posts/task-todolist/'
    },
    child: const task_todolist.TaskScreen(),
  ),
  RouteModel(
    title: 'Clothing Shopping',
    description:
        'There are three screens: one to splash screen, one to make login and one to see the food menu options.',
    designSource: {
      "scheme": "https",
      "host": 'dribbble.com',
      "path": 'shots/19944979-Cloths-Shopping-App-Design/'
    },
    child: const clothes_shopping.HomeScreen(),
  ),
];
