// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PomodoroStore on _PomodoroStore, Store {
  late final _$workTimeAtom =
      Atom(name: '_PomodoroStore.workTime', context: context);

  @override
  int get workTime {
    _$workTimeAtom.reportRead();
    return super.workTime;
  }

  @override
  set workTime(int value) {
    _$workTimeAtom.reportWrite(value, super.workTime, () {
      super.workTime = value;
    });
  }

  late final _$restTimeAtom =
      Atom(name: '_PomodoroStore.restTime', context: context);

  @override
  int get restTime {
    _$restTimeAtom.reportRead();
    return super.restTime;
  }

  @override
  set restTime(int value) {
    _$restTimeAtom.reportWrite(value, super.restTime, () {
      super.restTime = value;
    });
  }

  late final _$minAtom = Atom(name: '_PomodoroStore.min', context: context);

  @override
  int get min {
    _$minAtom.reportRead();
    return super.min;
  }

  @override
  set min(int value) {
    _$minAtom.reportWrite(value, super.min, () {
      super.min = value;
    });
  }

  late final _$secondsAtom =
      Atom(name: '_PomodoroStore.seconds', context: context);

  @override
  int get seconds {
    _$secondsAtom.reportRead();
    return super.seconds;
  }

  @override
  set seconds(int value) {
    _$secondsAtom.reportWrite(value, super.seconds, () {
      super.seconds = value;
    });
  }

  late final _$isStartedAtom =
      Atom(name: '_PomodoroStore.isStarted', context: context);

  @override
  bool get isStarted {
    _$isStartedAtom.reportRead();
    return super.isStarted;
  }

  @override
  set isStarted(bool value) {
    _$isStartedAtom.reportWrite(value, super.isStarted, () {
      super.isStarted = value;
    });
  }

  late final _$intervalTypeAtom =
      Atom(name: '_PomodoroStore.intervalType', context: context);

  @override
  IntervalType get intervalType {
    _$intervalTypeAtom.reportRead();
    return super.intervalType;
  }

  @override
  set intervalType(IntervalType value) {
    _$intervalTypeAtom.reportWrite(value, super.intervalType, () {
      super.intervalType = value;
    });
  }

  late final _$_PomodoroStoreActionController =
      ActionController(name: '_PomodoroStore', context: context);

  @override
  void incrementWorkTime() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.incrementWorkTime');
    try {
      return super.incrementWorkTime();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementRestTime() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.incrementRestTime');
    try {
      return super.incrementRestTime();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementWorkTime() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.decrementWorkTime');
    try {
      return super.decrementWorkTime();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementRestTime() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.decrementRestTime');
    try {
      return super.decrementRestTime();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void startChronometer() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.startChronometer');
    try {
      return super.startChronometer();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void stopChronometer() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.stopChronometer');
    try {
      return super.stopChronometer();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void restart() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.restart');
    try {
      return super.restart();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
workTime: ${workTime},
restTime: ${restTime},
min: ${min},
seconds: ${seconds},
isStarted: ${isStarted},
intervalType: ${intervalType}
    ''';
  }
}
