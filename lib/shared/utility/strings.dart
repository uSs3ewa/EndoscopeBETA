// ====================================================
//  Файл содержит фунции для работы со строками
// ====================================================

// Форматировние времени в виде mm:ss или hh:mm:ss
String formatDuration(Duration duration) {
  String twoDigits(int n) => n.toString().padLeft(2, '0');
  final hours = twoDigits(duration.inHours);
  final minutes = twoDigits(duration.inMinutes.remainder(60));
  final seconds = twoDigits(duration.inSeconds.remainder(60));

  return duration.inHours > 0
      ? '$hours:$minutes:$seconds'
      : '$minutes:$seconds';
}
