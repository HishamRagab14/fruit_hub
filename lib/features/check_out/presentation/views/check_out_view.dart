import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/widgets/build_app_bar.dart';
import 'package:fruits_hub_app/features/check_out/presentation/views/widgets/check_out_view_body.dart';

class CheckOutView extends StatelessWidget {
  const CheckOutView({super.key});
  static const routeName = 'checkOutView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: 'الشحن',
        showNotification: false,
      ),
      body: const CheckOutViewBody(),
    );
  }
}
