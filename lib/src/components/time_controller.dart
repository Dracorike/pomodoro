import 'package:flutter/material.dart';
import 'package:pomodoro/src/store/pomodoro_store.dart';
import 'package:provider/provider.dart';

class TimeController extends StatelessWidget {
  const TimeController({
    super.key,
    required this.title,
    required this.time,
    this.inc,
    this.dec,
  });

  final String title;
  final int time;
  final Function()? inc;
  final Function()? dec;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 25),
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: dec,
              style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(15),
                  foregroundColor: Theme.of(context).colorScheme.inversePrimary,
                  backgroundColor: Theme.of(context).colorScheme.primary),
              child: const Icon(Icons.arrow_downward),
            ),
            const SizedBox(width: 10),
            Text('$time min'),
            const SizedBox(width: 10),
            ElevatedButton(
              onPressed: inc,
              style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(15),
                  foregroundColor: Theme.of(context).colorScheme.inversePrimary,
                  backgroundColor: Theme.of(context).colorScheme.primary),
              child: const Icon(Icons.arrow_upward),
            ),
          ],
        ),
      ],
    );
  }
}
