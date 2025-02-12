import 'package:flutter/material.dart';

void showBar(BuildContext context, String errMsg) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      behavior: SnackBarBehavior.floating,
      duration: const Duration(milliseconds: 800),
      content: Text(errMsg),
    ),
  );
}
