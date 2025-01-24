import 'package:flutter/material.dart';

void buildErrorBar(BuildContext context, String errMsg) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(errMsg),
      ),
    );
  }