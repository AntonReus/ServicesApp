// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class ErrorDialog extends StatelessWidget {
  final String? message;
  const ErrorDialog({this.message});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      key: key,
      content: Text(message!),
      actions: [
        ElevatedButton(
          child: const Center(
            child: Text("Ok"),
          ),
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}