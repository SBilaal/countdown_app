import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part 'countdown.freezed.dart';
part 'countdown.g.dart';

@freezed
class Countdown with _$Countdown {
  @HiveType(typeId: 0, adapterName: 'CountdownAdapter')
  const factory Countdown({
    @HiveField(0) required DateTime date,
    @HiveField(1) required String title,
    @HiveField(2) required int iconIndex,
    @HiveField(3) required int colorIndex,
    @HiveField(4) required String id,
  }) = _Countdown;

  factory Countdown.empty() => Countdown(
        date: DateTime.now(),
        title: '',
        iconIndex: 0,
        colorIndex: 0,
        id: const Uuid().v1(),
      );

  // factory Countdown.fromFirestore(
  //   DocumentSnapshot<Map<String, dynamic>> snapshot,
  //   SnapshotOptions? options,
  // ) {
  //   final data = snapshot.data()!;
  //   return Countdown(
  //       date: (data['date'] as Timestamp).toDate(),
  //       title: data['title'],
  //       iconIndex: data['iconIndex'],
  //       colorIndex: data['colorIndex'],
  //       id: snapshot.id);
  // }

  // Map<String, dynamic> toFirestore() {
  //   return {
  //     "date": Timestamp.fromDate(date),
  //     "title": title,
  //     "iconIndex": iconIndex,
  //     "colorIndex": colorIndex,
  //   };
  // }
}

// @HiveType(typeId: 1)
// class Countdown extends HiveObject {
//   Countdown({
//     required this.date,
//     required this.title,
//     required this.iconIndex,
//     required this.colorIndex,
//     required this.id,
//   });

//   factory Countdown.empty() => Countdown(
//         date: DateTime.now(),
//         title: '',
//         iconIndex: 0,
//         colorIndex: 0,
//         id: const Uuid().v1(),
//       );

//   @HiveField(0)
//   late final String id;
//   @HiveField(1)
//   late String title;
//   @HiveField(2)
//   late int iconIndex;
//   @HiveField(3)
//   late int colorIndex;
//   @HiveField(4)
//   late DateTime date;

//   void copyWith(Countdown countdown) {
//     date = countdown.date;
//     title = countdown.title;
//     iconIndex = countdown.iconIndex;
//     colorIndex = countdown.colorIndex;
//   }

//   factory Countdown.fromFirestore(
//     DocumentSnapshot<Map<String, dynamic>> snapshot,
//     SnapshotOptions? options,
//   ) {
//     final data = snapshot.data()!;
//     return Countdown(
//         date: (data['date'] as Timestamp).toDate(),
//         title: data['title'],
//         iconIndex: data['iconIndex'],
//         colorIndex: data['colorIndex'],
//         id: snapshot.id);
//   }

//   Map<String, dynamic> toFirestore() {
//     return {
//       "date": Timestamp.fromDate(date),
//       "title": title,
//       "iconIndex": iconIndex,
//       "colorIndex": colorIndex,
//     };
//   }
// }
