import 'package:flutter/material.dart';
import 'package:todo/components/todo_tile.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 203, 196, 132),
      appBar: AppBar(
        title: const Text("TO DO APP"),
        elevation: 0,
      ),
      body: ListView(
        children: [
          TodoTile(
            name: "Reading",
            taskCompleted: true,
          ),
          TodoTile(
            name: "Exercise",
            taskCompleted: false,
          ),
        ],
      ),
    );
  }
}
