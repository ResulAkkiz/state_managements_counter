// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'counter_bloc.dart';

abstract class CounterEvent {}

class ArttirEvent extends CounterEvent {}

class AzaltEvent extends CounterEvent {}

class NTaneArttirEvent extends CounterEvent {
  int number;
  NTaneArttirEvent({
    required this.number,
  });
}
