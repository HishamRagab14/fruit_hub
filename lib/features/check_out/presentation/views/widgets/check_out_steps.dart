import 'package:flutter/widgets.dart';
import 'package:fruits_hub_app/features/check_out/presentation/views/widgets/step_item.dart';

class CheckOutSteps extends StatelessWidget {
  const CheckOutSteps({
    super.key,
    required this.currentIndex,
    required this.pageController,
    required this.onTap,
  });
  final int currentIndex;
  final PageController pageController;
  final ValueChanged<int> onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        getSteps().length,
        (index) {
          return Expanded(
            child: GestureDetector(
              onTap: (){
                onTap(index); 
              },
              child: StepItem(
                isActive: index <= currentIndex,
                text: getSteps()[index],
                index: (index + 1).toString(),
              ),
            ),
          );
        },
      ),
    );
  }
}

List<String> getSteps() {
  return [
    'الشحن',
    'العنوان',
    'الدفع',
  ];
}
