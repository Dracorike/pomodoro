import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/src/components/cronomether.dart';
import 'package:pomodoro/src/components/time_controller.dart';
import 'package:pomodoro/src/store/pomodoro_store.dart';
import 'package:provider/provider.dart';

class PomodoroScreen extends StatefulWidget {
  const PomodoroScreen({Key? key}) : super(key: key);

  @override
  State<PomodoroScreen> createState() => _PomodoroScreenState();
}

class _PomodoroScreenState extends State<PomodoroScreen> {
  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(child: Chronomether()),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Observer(
              builder: (_) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TimeController(
                    title: 'Trabalho',
                    time: store.workTime,
                    dec: store.decrementWorkTime,
                    inc: store.incrementWorkTime,
                  ),
                  TimeController(
                    title: 'Descanço',
                    time: store.restTime,
                    dec: store.decrementRestTime,
                    inc: store.incrementRestTime,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
