import 'dart:async';

import 'package:flutter/material.dart';

import '../helper/conversions.dart';
import '../models/lap_model.dart';

class StopwatchProvider extends ChangeNotifier {
  StopwatchProvider()
      : _duration = const Duration(seconds: 0),
        _milliseconds = 0,
        _isRunning = false,
        _isPause = false,
        laps = <LapModel>[],
        keyAnimatedList = GlobalKey();

  late Timer timer;
  late Duration _duration;
  late int _milliseconds;
  late bool _isRunning;
  late bool _isPause;
  late List<LapModel> laps;
  late GlobalKey<AnimatedListState> keyAnimatedList;

  final StreamController<String?> _streamMillisecondsController =
      StreamController.broadcast();

  final StreamController<String?> _streamSecondsController =
      StreamController.broadcast();

  final StreamController<String?> _streamMinutesController =
      StreamController.broadcast();

  //Getters

  Stream<String?> get streamMilliseconds =>
      _streamMillisecondsController.stream;

  Stream<String?> get streamSeconds => _streamSecondsController.stream;

  Stream<String?> get streamMinutes => _streamMinutesController.stream;

  String get secondsElapsed => secondsDuration(_duration);

  String get minutesElapsed => minutesDuration(_duration);

  bool get isRunning => _isRunning;
  bool get isPause => _isPause;

  //Methods

  void start() {
    _isRunning = true;
    _isPause = false;

    notifyListeners();

    timer = Timer.periodic(const Duration(milliseconds: 10), (timer) {
      if (_milliseconds == 99) {
        _duration = Duration(seconds: _duration.inSeconds + 1);

        if (secondsElapsed == "00") {
          _streamMinutesController.add(minutesElapsed);
        }

        _streamSecondsController.add(secondsElapsed);

        _milliseconds = 0;
      } else {
        _milliseconds++;
      }

      _streamMillisecondsController.add(_milliseconds.toString());
    });
  }

  void pause() {
    timer.cancel();
    _isPause = true;
    _isRunning = false;
    notifyListeners();
  }

  void stop() {
    timer.cancel();
    laps.clear();

    _milliseconds = 0;
    _duration = const Duration();

    _streamMillisecondsController.add(null);
    _streamSecondsController.add(null);
    _streamMinutesController.add(null);

    _isRunning = false;
    _isPause = false;

    keyAnimatedList = GlobalKey();

    notifyListeners();
  }

  void addLap() {
    final durationTotal =
        Duration(seconds: _duration.inSeconds, milliseconds: _milliseconds);

    if (laps.isEmpty) {
      laps.insert(
          0,
          LapModel(
            id: laps.length + 1,
            elapsedDuration: getDuration(durationTotal),
            totalDuration: durationTotal,
          ));

      notifyListeners();
    } else {
      final LapModel beforeLap = laps[0];

      final elapsedDuration =
          Duration(milliseconds: durationTotal.inMilliseconds) -
              beforeLap.totalDuration;

      laps.insert(
          0,
          LapModel(
              id: laps.length + 1,
              elapsedDuration: getDuration(elapsedDuration),
              totalDuration: durationTotal));
    }

    keyAnimatedList.currentState!.insertItem(0);
  }

  @override
  void dispose() {
    _streamMillisecondsController.close();
    _streamSecondsController.close();
    _streamMinutesController.close();
    super.dispose();
  }
}
