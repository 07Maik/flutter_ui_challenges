import 'dart:io';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/gestures.dart';

import 'package:flutter/material.dart';

// import 'package:flutter_ui_challenges/src/pages/chat_app/screens/chat_screen.dart';

// import 'package:flutter_ui_challenges/src/pages/sushi_app/screens/food_dish_detail_page.dart';
import 'package:flutter_ui_challenges/core/presentation/pages/home_page.dart';

import 'package:window_size/window_size.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  if (!kIsWeb) {
    if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
      setWindowMinSize(const Size(450, 800));
    }
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const MyScrollBehavior(),
      debugShowCheckedModeBanner: false,
      home: HomePage()
      // home: ChatScreen(idUser: 'userB',),
    );
  }
}

class MyScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices =>
      {PointerDeviceKind.touch, PointerDeviceKind.mouse};

  const MyScrollBehavior();
}
