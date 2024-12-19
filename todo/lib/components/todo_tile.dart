import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final String name;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  TodoTile({super.key, required this.name, required this.taskCompleted});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
            color: Colors.yellow, borderRadius: BorderRadius.circular(12)),
        child: Row(
          children: [
            Checkbox(value: taskCompleted, onChanged: onChanged),
            const Text("Reading"),
          ],
        ),
      ),
    );
  }
}
