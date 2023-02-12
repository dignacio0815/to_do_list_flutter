import 'package:flutter/material.dart';
import 'package:to_do_list_flutter/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSaved;
  VoidCallback onCancelled;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSaved,
    required this.onCancelled,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new task!",
              ),
            ),
            // buttons -> save and cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // save button
                MyButton(text: "Save", onPressed: onSaved),

                const SizedBox(
                  width: 8,
                ),
                // cancel button
                MyButton(text: "Cancel", onPressed: onCancelled),
              ],
            )
          ],
        ),
      ),
    );
  }
}
