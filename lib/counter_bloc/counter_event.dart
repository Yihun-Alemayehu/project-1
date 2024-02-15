part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {
  final int counter;
  const CounterEvent({required this.counter});
}

class IncrementEvent extends CounterEvent{
   IncrementEvent(int value): super(counter: value)
}

class DecrementEvent extends CounterEvent{
  DecrementEvent(int value): super(counter: value);
}