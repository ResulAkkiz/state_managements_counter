// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'counter_bloc.dart';

abstract class CounterState {
  int sayac;
  CounterState({
    required this.sayac,
  });
}

class CounterInitial extends CounterState {
  CounterInitial({required int initialValue}) : super(sayac: initialValue);
}
