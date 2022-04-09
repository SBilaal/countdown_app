import 'package:bloc/bloc.dart';
import 'package:countdown_app/features/add_countdown/data/models/countdown.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'add_countdown_event.dart';
part 'add_countdown_state.dart';

class AddCountdownBloc extends Bloc<CountdownEvent, CountdownState> {
  AddCountdownBloc()
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
              isPressed: false,
              isTimeSelected: false,
              selectedColorIndex: 0,
              selectedIconIndex: 0,
            ),
          ),
        ) {
    on<AppStarted>((event, emit) {
      return emit(CountdownInitial(
        addCountdown: AddCountdown(
          title: '',
          countdownList: state.addCountdown.countdownList,
          eventDate: DateTime.now(),
          eventTime: TimeOfDay.now(),
          isEditingCountdown: false,
          isDateSelected: false,
          isPressed: false,
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
          isPressed: true,
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

    on<CountdownSaved>((event, emit) {
      emit(CountdownLoaded(
        addCountdown: state.addCountdown.copyWith(
          isPressed: false,
          countdownList: state.addCountdown.countdownList
            ..add(
              Countdown(
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
              ),
            ),
        ),
      ));
    });

    on<CountdownDeleteSelected>((event, emit) {
      emit(CountdownLoaded(
        addCountdown: state.addCountdown.copyWith(
          countdownList: state.addCountdown.countdownList
            ..removeAt(event.countdownIndex),
        ),
      ));
    });

    on<CountdownUpdated>((event, emit) {
      if (state.addCountdown.selectedCountdownIndex != null) {
        state.addCountdown.countdownList
            .removeAt(state.addCountdown.selectedCountdownIndex!);
        emit(CountdownLoaded(
          addCountdown: state.addCountdown.copyWith(
            isPressed: false,
            countdownList: state.addCountdown.countdownList
              ..insert(
                state.addCountdown.selectedCountdownIndex!,
                Countdown(
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
                ),
              ),
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
          isPressed: true,
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

class CounterObserver extends BlocObserver {
  @override
  void onTransition(Bloc bloc, Transition transition) {
    // TODO: implement onTransition
    super.onTransition(bloc, transition);
    print('$transition\n\n');
  }
}
