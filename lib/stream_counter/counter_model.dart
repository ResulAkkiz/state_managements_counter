// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

class Counter {
  int sayac;
  final StreamController<int> _streamController = StreamController<int>();
  StreamSink get _streamSink => _streamController.sink;
  Stream<int> get stream => _streamController.stream;

  Counter({
    required this.sayac,
  });

  void increase() {
    _streamSink.add(++sayac);
  }

  void decrease() {
    _streamSink.add(--sayac);
  }
}
