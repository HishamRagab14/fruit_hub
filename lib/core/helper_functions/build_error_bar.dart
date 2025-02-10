import 'package:flutter/material.dart';

void buildErrorBar(BuildContext context, String errMsg) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(milliseconds: 300),
        content: Text(errMsg),
      ),
    );
  }