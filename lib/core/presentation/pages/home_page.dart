import 'package:flutter/material.dart';

import 'package:flutter_ui_challenges/core/utils.dart';
import 'package:flutter_ui_challenges/core/constants.dart';

import 'package:flutter_ui_challenges/core/presentation/pages/challenges_list_page.dart';
import 'package:flutter_ui_challenges/core/presentation/widgets/custom_route_transitions.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(slivers: <Widget>[
          SliverToBoxAdapter(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 80.0),
                title(),
                const SizedBox(height: 50.0),
                backgroundImage(),
                const SizedBox(height: 50.0),
                buttonStart(context),
              ],
            ),
          ),
          SliverFillRemaining(hasScrollBody: false, child: linksSocialMedia())
        ]));
  }

  Widget title() => const Text(
        'UI Challenges',
        style: TextStyle(fontSize: 45.0, color: Colors.black),
      );

  Widget backgroundImage() => const Image(
      height: 350,
      image: AssetImage('assets/background_flutter_dev.png'));

  Widget linksSocialMedia() {
    return Container(
      margin: const EdgeInsets.only(top: 30, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            onPressed: () => openExternalLink(githubRepo),
            child: const CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/icon_gitHub.png'),
            ),
          ),
          const SizedBox(width: 50),
          MaterialButton(
            onPressed: () => openExternalLink(linkedIn),
            child: Image.asset('assets/icon_LI-In-Bug.png', height: 50),
          ),
        ],
      ),
    );
  }

  Widget buttonStart(BuildContext context) {
    return MaterialButton(
        color: Colors.blue,
        textColor: Colors.white,
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onPressed: () {
          CustomRouteTransitions(
            duration: const Duration(milliseconds: 500),
              context: context, child: const ChallengesListPage()).navigateTransition();
        },
        child: Container(
            alignment: Alignment.center,
            width: 150,
            height: 50,
            child: const Text(
              'Start',
              style: TextStyle(fontSize: 18),
            )));
  }
}
