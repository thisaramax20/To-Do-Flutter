import 'package:flutter/material.dart';
import 'package:todo/components/dialog_box.dart';
import 'package:todo/components/todo_tile.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List todoList = [
    ["Reading", false],
    ["Exercise", false],
  ];

  final _controller = TextEditingController();

  void saveNewTask() {
    setState(() {
      if (_controller.text.trim().isEmpty) {
        return;
      }
      todoList.add([_controller.text, false]);
      _controller.clear();
      Navigator.of(context).pop();
    });
  }

  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          save: saveNewTask,
          //pop off the dialog box
          cancel: Navigator.of(context).pop,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 203, 196, 132),
        appBar: AppBar(
          title: const Text("TO DO APP"),
          elevation: 0,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            createNewTask();
          },
          child: const Icon(Icons.add),
        ),
        body: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (context, index) {
            return TodoTile(
              name: todoList[index][0],
              taskCompleted: todoList[index][1],
              onChanged: (value) => checkBoxChanged(value, index),
            );
          },
        ));
  }

  checkBoxChanged(bool? value, int index) {
    setState(() {
      todoList[index][1] = !todoList[index][1];
    });
  }
}
