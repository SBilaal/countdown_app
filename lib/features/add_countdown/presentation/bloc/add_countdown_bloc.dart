import 'package:bloc/bloc.dart';
import 'package:countdown_app/features/add_countdown/data/models/countdown.dart';
import 'package:countdown_app/features/add_countdown/data/repositories/countdown_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'add_countdown_event.dart';
part 'add_countdown_state.dart';

class AddCountdownBloc extends Bloc<CountdownEvent, CountdownState> {
  final CountdownRepository _countdownRepository;

  AddCountdownBloc(this._countdownRepository)
      : super(
          CountdownInitial(
            addCountdown: AddCountdown(
              title: '',
              countdownList: [],
              eventDate: DateTime.now(),
              eventTime: TimeOfDay.now(),
              isEditingCountdown: false,
              isDateSelected: false,
              selectedCountdownIndex: null,
              isFormButtonPressed: false,
              isTimeSelected: false,
              selectedColorIndex: 0,
              selectedIconIndex: 0,
            ),
          ),
        ) {
    on<AppStarted>((event, emit) async {
      emit(CountdownInitial(
        addCountdown: AddCountdown(
          title: '',
          countdownList: await _countdownRepository.getAllCountdowns(),
          eventDate: DateTime.now(),
          eventTime: TimeOfDay.now(),
          isEditingCountdown: false,
          isDateSelected: false,
          isFormButtonPressed: false,
          isTimeSelected: false,
          selectedCountdownIndex: null,
          selectedColorIndex: 0,
          selectedIconIndex: 0,
        ),
      ));
    });

    on<CountdownCreated>((event, emit) {
      emit(CountdownLoaded(
        addCountdown: state.addCountdown.copyWith(
          isFormButtonPressed: true,
        ),
      ));
    });

    on<CountdownDateSelected>((event, emit) => emit(CountdownLoaded(
          addCountdown: state.addCountdown.copyWith(
            isDateSelected: true,
            eventDate: event.date,
          ),
        )));

    on<CountdownTimeSelected>((event, emit) => emit(CountdownLoaded(
          addCountdown: state.addCountdown.copyWith(
            isTimeSelected: true,
            eventTime: event.time,
          ),
        )));

    on<CountdownIconSelected>((event, emit) => emit(CountdownLoaded(
          addCountdown: state.addCountdown.copyWith(
            selectedIconIndex: event.iconIndex,
          ),
        )));

    on<CountdownColorSelected>((event, emit) => emit(CountdownLoaded(
          addCountdown: state.addCountdown.copyWith(
            selectedColorIndex: event.colorIndex,
          ),
        )));

    on<CountdownSaved>((event, emit) async {
      _countdownRepository.addCountdown(Countdown(
        id: DateTime.now().toString(),
        title: state.addCountdown.title,
        iconIndex: state.addCountdown.selectedIconIndex,
        colorIndex: state.addCountdown.selectedColorIndex,
        date: state.addCountdown.eventDate.add(
          Duration(
            hours: state.addCountdown.eventTime.hour,
            minutes: state.addCountdown.eventTime.minute,
          ),
        ),
      ));
      emit(CountdownLoading(addCountdown: state.addCountdown));
      emit(CountdownLoaded(
        addCountdown: state.addCountdown.copyWith(
          isFormButtonPressed: false,
          countdownList: await _countdownRepository.getAllCountdowns(),
        ),
      ));
    });

    on<CountdownDeleteSelected>((event, emit) async {
      print(state.addCountdown.countdownList[event.countdownIndex].id);
      _countdownRepository.deleteCountdown(
          state.addCountdown.countdownList[event.countdownIndex]);
      emit(CountdownLoading(addCountdown: state.addCountdown));
      emit(CountdownLoaded(
        addCountdown: state.addCountdown.copyWith(
          countdownList: await _countdownRepository.getAllCountdowns(),
        ),
      ));
    });

    on<CountdownUpdated>((event, emit) async {
      if (state.addCountdown.selectedCountdownIndex != null) {
        final oldCountdown = state.addCountdown
            .countdownList[state.addCountdown.selectedCountdownIndex!];
        _countdownRepository.updateCountdown(oldCountdown
          ..copyWith(
            title: state.addCountdown.title,
            iconIndex: state.addCountdown.selectedIconIndex,
            colorIndex: state.addCountdown.selectedColorIndex,
            date: state.addCountdown.eventDate.add(
              Duration(
                hours:
                    state.addCountdown.eventTime.hour - oldCountdown.date.hour,
                minutes: state.addCountdown.eventTime.minute -
                    oldCountdown.date.minute,
              ),
            ),
          ));
        emit(CountdownLoading(addCountdown: state.addCountdown));
        emit(CountdownLoaded(
          addCountdown: state.addCountdown.copyWith(
            isFormButtonPressed: false,
            countdownList: await _countdownRepository.getAllCountdowns(),
          ),
        ));
      }
    });

    on<CountdownTitleChanged>((event, emit) {
      emit(CountdownLoaded(
        addCountdown: state.addCountdown.copyWith(
          title: event.title,
        ),
      ));
    });

    on<CountdownEditSelected>((event, emit) {
      emit(CountdownLoaded(
        addCountdown: state.addCountdown.copyWith(
          isFormButtonPressed: true,
          isEditingCountdown: true,
          selectedCountdownIndex: event.countdownIndex,
          title: state.addCountdown.countdownList[event.countdownIndex].title,
          selectedIconIndex:
              state.addCountdown.countdownList[event.countdownIndex].iconIndex,
          selectedColorIndex:
              state.addCountdown.countdownList[event.countdownIndex].colorIndex,
          eventDate:
              state.addCountdown.countdownList[event.countdownIndex].date,
          eventTime: TimeOfDay(
            hour: state
                .addCountdown.countdownList[event.countdownIndex].date.hour,
            minute: state
                .addCountdown.countdownList[event.countdownIndex].date.minute,
          ),
          isDateSelected: true,
          isTimeSelected: true,
        ),
      ));
    });
  }
}

class CountdownObserver extends BlocObserver {
  @override
  void onTransition(Bloc bloc, Transition transition) {
    // TODO: implement onTransition
    super.onTransition(bloc, transition);
    print('$transition\n\n');
  }
}
