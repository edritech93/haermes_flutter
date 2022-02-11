import 'package:flutter/material.dart';

Future<String?> showAlert(
    BuildContext context, String message, String? title) async {
  return showDialog<String>(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title ?? 'Haermes'),
        content: SingleChildScrollView(child: Text(message)),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: const Text('OK'),
          ),
        ],
      );
    },
  );
}
