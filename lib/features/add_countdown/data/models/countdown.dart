class Countdown {
  Countdown({
    required this.date,
    required this.title,
    required this.iconIndex,
    required this.colorIndex,
    required this.id,
  });
  late final String id;
  late final String title;
  late final int iconIndex;
  late final int colorIndex;
  late final DateTime date;
}
