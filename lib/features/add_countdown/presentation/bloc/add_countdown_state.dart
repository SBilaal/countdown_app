part of 'add_countdown_bloc.dart';

abstract class CountdownState extends Equatable {
  final AddCountdown addCountdown;
  const CountdownState({required this.addCountdown});
  @override
  List<Object?> get props => [addCountdown];
}

class CountdownInitial extends CountdownState {
  const CountdownInitial({required AddCountdown addCountdown})
      : super(addCountdown: addCountdown);

  @override
  // TODO: implement props
  List<Object?> get props => super.props..add(addCountdown);
}

class CountdownLoaded extends CountdownState {
  const CountdownLoaded({required AddCountdown addCountdown})
      : super(addCountdown: addCountdown);

  @override
  // TODO: implement props
  List<Object?> get props => super.props..add(addCountdown);
}

class AddCountdown {
  AddCountdown({
    required this.title,
    required this.isFormButtonPressed,
    required this.eventDate,
    required this.countdownList,
    required this.eventTime,
    required this.isEditingCountdown,
    required this.isDateSelected,
    required this.isTimeSelected,
    required this.selectedCountdownIndex,
    required this.selectedColorIndex,
    required this.selectedIconIndex,
  });
  late bool isFormButtonPressed;
  late String title;
  late DateTime eventDate;
  late TimeOfDay eventTime;
  late bool isDateSelected;
  late bool isTimeSelected;
  late int selectedIconIndex;
  late int? selectedCountdownIndex;
  late bool isEditingCountdown;
  late int selectedColorIndex;
  late List<Countdown> countdownList;

  AddCountdown copyWith({
    String? title,
    bool? isFormButtonPressed,
    DateTime? eventDate,
    TimeOfDay? eventTime,
    bool? isDateSelected,
    bool? isTimeSelected,
    int? selectedIconIndex,
    int? selectedCountdownIndex,
    int? selectedColorIndex,
    bool? isEditingCountdown,
    List<Countdown>? countdownList,
  }) =>
      AddCountdown(
        title: title ?? this.title,
        isFormButtonPressed: isFormButtonPressed ?? this.isFormButtonPressed,
        eventDate: eventDate ?? this.eventDate,
        countdownList: countdownList ?? this.countdownList,
        eventTime: eventTime ?? this.eventTime,
        isDateSelected: isDateSelected ?? this.isDateSelected,
        isEditingCountdown: isEditingCountdown ?? this.isEditingCountdown,
        isTimeSelected: isTimeSelected ?? this.isTimeSelected,
        selectedCountdownIndex:
            selectedCountdownIndex ?? this.selectedCountdownIndex,
        selectedIconIndex: selectedIconIndex ?? this.selectedIconIndex,
        selectedColorIndex: selectedColorIndex ?? this.selectedColorIndex,
      );
}
