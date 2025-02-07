import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/widgets/build_app_bar.dart';
import 'package:fruits_hub_app/core/widgets/review_view_body.dart';

class ReviewView extends StatelessWidget {
  const ReviewView({super.key});
  
static const routeName = 'review';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'المراجعه',showNotification: false),
      body: const ReviewViewBody(),
    );
  }
}