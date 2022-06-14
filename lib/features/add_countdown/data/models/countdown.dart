import 'package:hive/hive.dart';
part 'countdown.g.dart';

@HiveType(typeId: 1)
class Countdown extends HiveObject {
  Countdown({
    required this.date,
    required this.title,
    required this.iconIndex,
    required this.colorIndex,
    required this.id,
  });
  @HiveField(0)
  late final String id;
  @HiveField(1)
  late String title;
  @HiveField(2)
  late int iconIndex;
  @HiveField(3)
  late int colorIndex;
  @HiveField(4)
  late DateTime date;

  void copyWith({
    String? title,
    int? iconIndex,
    int? colorIndex,
    DateTime? date,
  }) {
    this.date = date ?? this.date;
    this.title = title ?? this.title;
    this.iconIndex = iconIndex ?? this.iconIndex;
    this.colorIndex = colorIndex ?? this.colorIndex;
  }
}
