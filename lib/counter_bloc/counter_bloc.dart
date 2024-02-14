import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<IncrementEvent>((event, emit) {
      emit(CounterValue(counter: ( state as CounterValue).counter + 1));
    });
    on<DecrementEvent>((event, emit) {
      emit(CounterValue(counter: ( state as CounterValue).counter - 1));
    });
  }
}
