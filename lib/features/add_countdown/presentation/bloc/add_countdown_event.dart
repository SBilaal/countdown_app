part of 'add_countdown_bloc.dart';

abstract class CountdownEvent extends Equatable {
  const CountdownEvent();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class AppStarted extends CountdownEvent {}

class CountdownCreated extends CountdownEvent {}

class CountdownDateSelected extends CountdownEvent {
  final DateTime date;

  const CountdownDateSelected({required this.date});

  @override
  // TODO: implement props
  List<Object?> get props => super.props..add(date);
}

class CountdownTimeSelected extends CountdownEvent {
  final TimeOfDay time;

  const CountdownTimeSelected({required this.time});

  @override
  // TODO: implement props
  List<Object?> get props => super.props..add(time);
}

class CountdownIconSelected extends CountdownEvent {
  final int iconIndex;
  const CountdownIconSelected({required this.iconIndex});

  @override
  // TODO: implement props
  List<Object?> get props => super.props..add(iconIndex);
}

class CountdownColorSelected extends CountdownEvent {
  final int colorIndex;
  const CountdownColorSelected({required this.colorIndex});
  @override
  // TODO: implement props
  List<Object?> get props => super.props..add(colorIndex);
}

class CountdownEditSelected extends CountdownEvent {
  final int countdownIndex;
  const CountdownEditSelected({required this.countdownIndex});
  @override
  // TODO: implement props
  List<Object?> get props => super.props..add(countdownIndex);
}

class CountdownDeleteSelected extends CountdownEvent {
  final int countdownIndex;
  const CountdownDeleteSelected({required this.countdownIndex});
  @override
  // TODO: implement props
  List<Object?> get props => super.props..add(countdownIndex);
}

class CountdownTitleChanged extends CountdownEvent {
  final String title;
  const CountdownTitleChanged({required this.title});

  @override
  // TODO: implement props
  List<Object?> get props => super.props..add(title);
}

class CountdownSaved extends CountdownEvent {}

class CountdownUpdated extends CountdownEvent {}
