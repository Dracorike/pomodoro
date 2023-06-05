import 'dart:async';

import 'package:mobx/mobx.dart';

part 'pomodoro_store.g.dart';

class PomodoroStore = _PomodoroStore with _$PomodoroStore;

enum IntervalType { working, resting }

abstract class _PomodoroStore with Store {
  @observable
  int workTime = 2;
  @observable
  int restTime = 1;
  @observable
  int min = 2;
  @observable
  int seconds = 0;
  @observable
  bool isStarted = false;
  @observable
  IntervalType intervalType = IntervalType.resting;

  Timer? chronometer;

  @action
  void incrementWorkTime() {
    workTime++;
    if (isWorking()) {
      restart();
    }
  }

  @action
  void incrementRestTime() {
    restTime++;
    if (isResting()) {
      restart();
    }
  }

  @action
  void decrementWorkTime() {
    if (workTime > 1) {
      workTime--;
      if (isWorking()) {
        restart();
      }
    }
  }

  @action
  void decrementRestTime() {
    if (restTime > 1) {
      restTime--;
      if (isResting()) {
        restart();
      }
    }
  }

  @action
  void startChronometer() {
    isStarted = true;
    chronometer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (min == 0 && seconds == 0) {
        setIntervalType();
      } else if (seconds == 0) {
        seconds = 59;
        min--;
      } else {
        seconds--;
      }
    });
  }

  @action
  void stopChronometer() {
    isStarted = false;
    chronometer?.cancel();
  }

  @action
  void restart() {
    stopChronometer();

    min = isWorking() ? workTime : restTime;
    seconds = 0;
  }

  bool isWorking() {
    return intervalType == IntervalType.working;
  }

  bool isResting() {
    return intervalType == IntervalType.resting;
  }

  void setIntervalType() {
    if (isWorking()) {
      intervalType = IntervalType.resting;
      min = restTime;
    } else {
      intervalType = IntervalType.working;
      min = workTime;
    }
    seconds = 0;
  }
}
