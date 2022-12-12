import 'package:flutter/material.dart';

import 'package:flutter_ui_challenges/core/data/models/route_model.dart';

import 'package:flutter_ui_challenges/core/presentation/widgets/custom_route_transitions.dart';
import 'package:flutter_ui_challenges/core/presentation/routes.dart';

import '../widgets/challenge_item_widget.dart';

class ChallengesListPage extends StatefulWidget {
  const ChallengesListPage({super.key});

  @override
  State<ChallengesListPage> createState() => _ChallengesListPageState();
}

class _ChallengesListPageState extends State<ChallengesListPage> {
  late List<RouteModel> _routes;
  late String filterSelected;

  @override
  void initState() {
    _routes = routes;
    filterSelected = "";
    super.initState();
  }

  void sortProjects(String optionSelected) {
    filterSelected = optionSelected;

    final ChallengeCategory category = filterSelected == "Screens"
        ? ChallengeCategory.screen
        : ChallengeCategory.appClone;

    setState(() {
      _routes =
          routes.where((element) => element.category == category).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'UI Challenges',
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [challengeFilter(), ...listProjects(context)],
      ),
    );
  }

  Iterable<Widget> listProjects(BuildContext context) {
    return _routes.map(
      (e) => ChallengeItem(
          description: e.description,
          title: e.title,
          designSource: e.designSource,
          function: () {
            CustomRouteTransitions(
              context: context,
              child: e.child,
            ).navigateTransitionOnLayout(e.deviceType);
          }),
    );
  }

  Widget challengeFilter() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Icon(Icons.filter_list, color: Colors.blue),
          const Spacer(),
          TextButton(
              onPressed: () => sortProjects('Screens'),
              style: TextButton.styleFrom(
                backgroundColor:
                    filterSelected == "Screens" ? Colors.blue.shade100 : null,
              ),
              child: const Text(
                'Screens',
                style: TextStyle(color: Colors.blue),
              )),
          TextButton(
              onPressed: () => sortProjects('Apps clone'),
              style: TextButton.styleFrom(
                backgroundColor: filterSelected == "Apps clone"
                    ? Colors.blue.shade100
                    : null,
              ),
              child: const Text('Apps clone',
                  style: TextStyle(color: Colors.blue))),
        ],
      ),
    );
  }
}
