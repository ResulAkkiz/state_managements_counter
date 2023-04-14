import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial(initialValue: 15)) {
    on<ArttirEvent>((event, emit) {
      emit(CounterInitial(initialValue: state.sayac + 1));
    });

    on<NTaneArttirEvent>((event, emit) {
      emit(CounterInitial(initialValue: state.sayac + event.number));
    });

    on<AzaltEvent>((event, emit) {
      emit(CounterInitial(initialValue: state.sayac - 1));
    });
  }
}
