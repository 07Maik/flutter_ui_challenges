import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../constants.dart';
import '../../models/menu_model.dart';
import '../../providers/stopwatch_provider.dart';
import '../stopwatch/stopwatch_screen.dart';
import '../stopwatch/widgets/stopwatch_button_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late PageController controller;
  late List<MenuModel> listMenu;

  late int _currentIndexScreen;
  late bool _isJumpPage;

  @override
  void initState() {
    _currentIndexScreen = 2;
    _isJumpPage = false;

    listMenu = MenuModel.getList();
    controller = PageController(initialPage: _currentIndexScreen);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        MultiProvider(providers: [
          ChangeNotifierProvider(
            create: (context) => StopwatchProvider(),
          )
        ])
      ],
      builder: (context, child) => Scaffold(
        backgroundColor: const Color(Constants.primaryColor),
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: navigationBar(),
        ),
        body: Stack(
          alignment: Alignment.center,
          children: [
            PageView(
              physics: const BouncingScrollPhysics(),
              controller: controller,
              onPageChanged: (value) {
                if (_isJumpPage == false && _currentIndexScreen != value) {
                  setState(() => _currentIndexScreen = value);
                }
              },
              children: const [
                Center(child: Text('Alarm')), //alarm
                Center(child: Text('clock')), //clock
                StopWatchScreen(),
                Center(child: Text('Countdown timer')), //countdown timer
              ],
            ),
            Positioned(
              bottom: 80,
              width: 240,
              child: floatingActionButtons(),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox navigationBar() {
    return SizedBox(
        width: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(listMenu.length, (index) {
            MenuModel item = listMenu[index];

            IconData icon = index == _currentIndexScreen
                ? item.iconselected
                : item.iconNotselected;

            return IconButton(
              splashRadius: 1,
              onPressed: () async {
                setState(() {
                  _isJumpPage = true;
                  _currentIndexScreen = index;
                });

                controller
                    .animateToPage(index,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease)
                    .then((value) => _isJumpPage = false);
              },
              icon: Icon(
                icon,
                color: const Color(Constants.secundaryColor),
              ),
            );
          }),
        ));
  }

  Widget floatingActionButtons() {
    if (_currentIndexScreen == 2) {
      return const StopwatchButton();
    }

    return Container();
  }
}
