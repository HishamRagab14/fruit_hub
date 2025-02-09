import 'package:flutter/widgets.dart';
import 'package:fruits_hub_app/features/check_out/presentation/views/widgets/check_out_steps.dart';
// import 'package:fruits_hub_app/features/check_out/presentation/views/widgets/in_active_step_item.dart';

class CheckOutViewBody extends StatelessWidget {
  const CheckOutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          // ListView.builder
          CheckOutSteps(),
        ],
      ),
    );
  }
}