import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/src/store/pomodoro_store.dart';
import 'package:provider/provider.dart';

class Chronomether extends StatelessWidget {
  const Chronomether({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Observer(
      builder: (_) => Container(
        color: store.isWorking() ? Colors.red : Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              store.isWorking() ? 'Hora de trabalhar' : 'Hora de descanço',
              style: const TextStyle(
                fontSize: 40,
                color: Colors.white,
              ),
            ),
            Text(
              '${store.min.toString().padLeft(2, '0')}:${store.seconds.toString().padLeft(2, '0')}',
              style: const TextStyle(color: Colors.white, fontSize: 120),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                store.isStarted
                    ? ElevatedButton.icon(
                        onPressed: store.stopChronometer,
                        icon: const Icon(Icons.stop),
                        label: const Text('stop'),
                      )
                    : ElevatedButton.icon(
                        onPressed: store.startChronometer,
                        icon: const Icon(Icons.play_arrow),
                        label: const Text('play'),
                      ),
                ElevatedButton.icon(
                  onPressed: store.restart,
                  icon: const Icon(Icons.replay),
                  label: const Text('restart'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
