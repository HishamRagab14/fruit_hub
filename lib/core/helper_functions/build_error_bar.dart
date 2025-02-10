import 'package:flutter/material.dart';

void showErrorBar(BuildContext context, String errMsg) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: const Duration(milliseconds: 800),
      content: Text(errMsg),
    ),
  );
}
