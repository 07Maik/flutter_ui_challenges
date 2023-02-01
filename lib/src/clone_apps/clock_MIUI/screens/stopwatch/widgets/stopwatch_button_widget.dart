import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../../providers/stopwatch_provider.dart';

class StopwatchButton extends StatelessWidget {
  const StopwatchButton({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<StopwatchProvider>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        if ((provider.isRunning || provider.isPause)) btnLapStop(provider),
        btnPlayPause(provider),
      ],
    );
  }

  FloatingActionButton btnLapStop(StopwatchProvider provider) {
    late IconData icon;

    if (provider.isRunning && !provider.isPause) {
      icon = Icons.flag_outlined;
    } else {
      icon = Icons.stop;
    }

    onpressed() {
      if (provider.isRunning && !provider.isPause) {
        provider.addLap();
      } else {
        provider.stop();
      }
    }

    return _btnAction(onpressed, icon);
  }

  FloatingActionButton btnPlayPause(StopwatchProvider provider) {
    late IconData icon;

    if (!provider.isRunning || (provider.isRunning && provider.isPause)) {
      icon = Icons.play_arrow;
    } else {
      icon = Icons.pause;
    }

    onpressed() {
      if (!provider.isRunning || provider.isPause) {
        provider.start();
      } else {
        provider.pause();
      }
    }

    return _btnAction(onpressed, icon);
  }

  FloatingActionButton _btnAction(Function onPressed, IconData icon) {
    return FloatingActionButton(
      backgroundColor: Colors.white,
      foregroundColor: Colors.grey,
      elevation: 10,
      onPressed: () => onPressed(),
      child: Icon(
        icon,
        color: Colors.blue,
      ),
    );
  }
}
