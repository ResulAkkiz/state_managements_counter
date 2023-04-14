// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'counter_cubit.dart';

abstract class CounterState {
  final int sayac;
  const CounterState({
    required this.sayac,
  });
}

class CounterInitial extends CounterState {
  const CounterInitial({required int initialValue})
      : super(sayac: initialValue);
}

class MyCounter extends CounterState {
  const MyCounter({required int counterValue}) : super(sayac: counterValue);
}
