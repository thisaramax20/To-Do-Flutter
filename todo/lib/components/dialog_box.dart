import 'package:flutter/material.dart';
import 'package:todo/components/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback save;
  VoidCallback cancel;
  DialogBox(
      {super.key,
      required this.controller,
      required this.save,
      required this.cancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Add a New Task"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyButton(
                  name: 'Save',
                  onPressed: () {
                    save();
                  },
                ),
                MyButton(
                  name: 'Cancel',
                  onPressed: () {
                    cancel();
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
