import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../provider/task.dart';
import '../widgets/bottom_menu_widget.dart';
import '../widgets/calendar_widget.dart';
import '../widgets/list_task_widget.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Task(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              title(),
              cardCalendar(),
              const Expanded(child: ListTask()),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            shape: const CircleBorder(side: BorderSide.none),
            foregroundColor: const Color(0xff6874b7),
            backgroundColor: Colors.white,
          ),
          child: Container(
            alignment: Alignment.center,
            width: 80,
            height: 80,
            child: const CircleAvatar(
              backgroundColor: Color(0xffef4c66),
              radius: 30,
              child: Icon(Icons.add, size: 50, color: Colors.white),
            ),
          ),
        ),
        bottomNavigationBar: const BottomMenu(),
        //
      ),
    );
  }

  Container title() {
    return Container(
      margin: const EdgeInsets.only(top: 30, left: 30, right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Hi, Sam',
            style: TextStyle(
              fontSize: 24,
              color: Colors.grey[600],
            ),
          ),
          const ExpandIcon(onPressed: null, size: 20)
        ],
      ),
    );
  }

  Container cardCalendar() {
    return Container(
      margin: const EdgeInsets.only(bottom: 10, left: 16, right: 16),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.grey[400]!,
              offset: const Offset(0, 7),
              blurRadius: 5,
              spreadRadius: -1),
          const BoxShadow(
            color: Colors.white,
            offset: Offset(-8, 0),
          ),
          const BoxShadow(
            color: Colors.white,
            offset: Offset(8, 0),
          ),
        ],
      ),
      child: const Calendar(),
    );
  }
}
