import 'package:flutter/widgets.dart';
import 'package:fruits_hub_app/features/check_out/presentation/views/widgets/active_step_item.dart';
import 'package:fruits_hub_app/features/check_out/presentation/views/widgets/in_active_step_item.dart';

class CheckOutSteps extends StatelessWidget {
  const CheckOutSteps({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        getSteps().length,
        (index) {
          return Expanded(
            child: InActiveStepItem(
              text: getSteps()[index],
              index: (index + 1).toString(),
            ),
          );
        },
      ),
    );
  }

  List<String> getSteps() {
    return [
      'الشحن',
      'العنوان',
      'الدفع',
      'المراجعه',
    ];
  }
}
