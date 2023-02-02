String minutesDuration(Duration duration) =>
    (duration.inMinutes).toString().padLeft(2, '0');

String secondsDuration(Duration duration) =>
    ((duration.inSeconds % 60)).toString().padLeft(2, '0');

String millisecondsDuration(Duration duration) {
  final minutes = minutesDuration(duration);
  final seconds = secondsDuration(duration);

  final previousDurationWithoutMilliseconds = Duration(
    minutes: int.parse(minutes),
    seconds: int.parse(seconds),
  );

  final milliseconds =
      ((duration - previousDurationWithoutMilliseconds).inMilliseconds % 100)
          .toString()
          .padLeft(2, '0');

  return milliseconds;
}

String getDuration(Duration duration) {
  return "${minutesDuration(duration)}:${secondsDuration(duration)}.${millisecondsDuration(duration)}";
}
