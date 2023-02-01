import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../providers/stopwatch_provider.dart';

import 'widgets/list_laps_widget.dart';

class StopWatchScreen extends StatefulWidget {
  const StopWatchScreen({super.key});

  @override
  State<StopWatchScreen> createState() => _StopWatchScreenState();
}

class _StopWatchScreenState extends State<StopWatchScreen> {
  late bool isStart;
  late Duration animationDuration;

  @override
  void initState() {
    super.initState();
    animationDuration = const Duration(milliseconds: 250);
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<StopwatchProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          timer(provider),
          ListLaps(animationDuration: animationDuration, provider: provider)
        ],
      ),
    );
  }

  AnimatedSize timer(provider) {
    return AnimatedSize(
      duration: animationDuration,
      child: SizedBox(
        height: provider.laps.isEmpty ? 400 : 50,
        child: AnimatedDefaultTextStyle(
          duration: animationDuration,
          style: TextStyle(
            fontSize: provider.laps.isEmpty ? 48 : 32,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StreamBuilder(
                stream: provider.streamMinutes,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text(
                      "${snapshot.data.toString().padLeft(2, '0')}:",
                    );
                  }
                  return Text('${provider.minutesElapsed}:');
                },
              ),
              StreamBuilder(
                stream: provider.streamSeconds,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text(
                      "${snapshot.data.toString().padLeft(2, '0')}:",
                    );
                  }
                  return Text('${provider.secondsElapsed}:');
                },
              ),
              StreamBuilder(
                stream: provider.streamMilliseconds,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text(
                      snapshot.data.toString().padLeft(2, '0'),
                    );
                  }
                  return const Text('00');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
