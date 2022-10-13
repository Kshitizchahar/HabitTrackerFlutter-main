import 'package:flutter/material.dart';

class MyAlertBox extends StatelessWidget {
  final controller;
  final String hintText;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  const MyAlertBox({
    super.key,
    required this.controller,
    required this.hintText,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color.fromARGB(255, 53, 198, 104),
      content: TextField(
        controller: controller,
        style: const TextStyle(color: Color.fromARGB(255, 81, 98, 6)),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[600]),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 148, 59, 187))),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 92, 172, 206))),
        ),
      ),
      actions: [
        MaterialButton(
          onPressed: onSave,
          child: Text(
            "Save",
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.black,
        ),
        MaterialButton(
          onPressed: onCancel,
          child: Text(
            "Cancel",
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.black,
        ),
      ],
    );
  }
}
