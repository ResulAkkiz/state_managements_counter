import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterInitial(initialValue: 20));

  void increase() {
    emit(MyCounter(counterValue: state.sayac + 1));
  }

  void decrease() {
    emit(MyCounter(counterValue: state.sayac - 1));
  }
}
