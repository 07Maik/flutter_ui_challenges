import 'package:flutter/material.dart';

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
                button(),
              ],
            ),
          ),
          SliverFillRemaining(hasScrollBody: false, child: socialMedia())
        ]));
  }

  Widget title() => const Text(
        'Challenges UI',
        style: TextStyle(fontSize: 45.0, color: Colors.black),
      );

  Widget backgroundImage() => const Image(
      height: 350,
      image: AssetImage('assets/images/background_flutter_dev.png'));

  Widget socialMedia() {
    return Container(
      margin: const EdgeInsets.only(top: 30, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage('assets/icons/gitHub.png'),
          ),
          const SizedBox(width: 50),
          Container(
            width: 55,
            height: 55,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/icons/LI-In-Bug.png'))),
          ),
        ],
      ),
    );
  }

  Widget button() {
    return MaterialButton(
        color: Colors.blue,
        textColor: Colors.white,
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onPressed: () {},
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
