import '../helper/conversions.dart';

class LapModel {
  final int id;
  final String elapsedDuration;
  final Duration totalDuration;

  LapModel({
    required this.id,
    required this.totalDuration,
    required this.elapsedDuration,
  });

  String getTotalDuration() {
    final minutes = minutesDuration(totalDuration);
    final seconds = secondsDuration(totalDuration);
    final milliseconds = millisecondsDuration(totalDuration);

    return "$minutes:$seconds.$milliseconds";
  }
}
