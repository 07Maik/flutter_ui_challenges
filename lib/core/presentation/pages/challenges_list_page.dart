import 'package:flutter/material.dart';

import 'package:flutter_ui_challenges/core/presentation/pages/layout_page.dart';
import 'package:flutter_ui_challenges/core/presentation/widgets/custom_route_transitions.dart';
import 'package:flutter_ui_challenges/core/presentation/routes.dart';

import '../widgets/challenge_filter_widget.dart';
import '../widgets/challenge_item_widget.dart';

class ChallengesListPage extends StatelessWidget {
  const ChallengesListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            title: const Text(
              'UI Challenges',
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            centerTitle: true),
        backgroundColor: Colors.white,
        body: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            const ChallengeFilter(),
            ...routes.map(
              (e) => ChallengeItem(
                description: e.description,
                title: e.title,
                function: () => CustomRouteTransitions(
                  context: context,
                  child: LayoutPage(
                    description: e.description,
                    title: e.title,
                    child: e.child,
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
