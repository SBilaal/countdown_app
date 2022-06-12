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
  late final String title;
  @HiveField(2)
  late final int iconIndex;
  @HiveField(3)
  late final int colorIndex;
  @HiveField(4)
  late final DateTime date;
}
