import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:countdown_app/features/add_countdown/domain/entities/countdown.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'countdown_dto.freezed.dart';

@freezed
class CountdownDTO with _$CountdownDTO {
  const CountdownDTO._();

  const factory CountdownDTO({
    required DateTime date,
    required String title,
    required int iconIndex,
    required int colorIndex,
    required String id,
  }) = _CountdownDTO;

  factory CountdownDTO.fromDomain(Countdown countdown) => CountdownDTO(
        date: countdown.date,
        title: countdown.title,
        iconIndex: countdown.iconIndex,
        colorIndex: countdown.colorIndex,
        id: countdown.id,
      );

  Countdown toDomain() => Countdown(
        date: date,
        title: title,
        iconIndex: iconIndex,
        colorIndex: colorIndex,
        id: id,
      );
  
  factory CountdownDTO.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data()!;
    return CountdownDTO(
        date: (data['date'] as Timestamp).toDate(),
        title: data['title'],
        iconIndex: data['iconIndex'],
        colorIndex: data['colorIndex'],
        id: snapshot.id);
  }

  Map<String, dynamic> toFirestore() {
    return {
      "date": Timestamp.fromDate(date),
      "title": title,
      "iconIndex": iconIndex,
      "colorIndex": colorIndex,
    };
  }
}
