import 'package:flutter/widgets.dart';
import 'package:fruits_hub_app/features/check_out/presentation/views/widgets/step_item.dart';

class CheckOutSteps extends StatelessWidget {
  const CheckOutSteps(
      {super.key, required this.currentIndex, required this.pageController,});
  final int currentIndex;
  final PageController pageController;
  // final Function(int index)? onTap حل تانى ;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        getSteps().length,
        (index) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                pageController.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                );
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
