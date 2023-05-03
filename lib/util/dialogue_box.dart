import 'package:flutter/material.dart';

import 'my_buttons.dart';

class DialogueBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback oncancel;

  DialogueBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.oncancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white60,
      content: Container(
        height: 120,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: "Add a new task"),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MyButton(text: "Save", onPressed: onSave),
              SizedBox(
                width: 8,
              ),
              MyButton(text: "Cancel", onPressed: oncancel)
            ],
          )
        ]),
      ),
    );
  }
}
