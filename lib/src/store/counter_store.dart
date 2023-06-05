import 'package:mobx/mobx.dart';

part 'counter_store.g.dart';

class CounterStore = _CounterStore with _$CounterStore;

abstract class _CounterStore with Store{
  @observable
  int cont = 0;

  @action
  void increment() {
    cont++;
  }
}
