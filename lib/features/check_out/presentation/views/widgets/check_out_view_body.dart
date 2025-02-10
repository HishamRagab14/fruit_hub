import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub_app/core/helper_functions/show_error_bar.dart';
import 'package:fruits_hub_app/core/widgets/custom_button.dart';
import 'package:fruits_hub_app/features/check_out/domain/entities/order_entity.dart';
import 'package:fruits_hub_app/features/check_out/presentation/views/widgets/check_out_steps.dart';
import 'package:fruits_hub_app/features/check_out/presentation/views/widgets/check_out_steps_page_view.dart';

class CheckOutViewBody extends StatefulWidget {
  const CheckOutViewBody({super.key});

  @override
  State<CheckOutViewBody> createState() => _CheckOutViewBodyState();
}

class _CheckOutViewBodyState extends State<CheckOutViewBody> {
  late PageController pageController;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPageIndex = pageController.page!.toInt();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          CheckOutSteps(
            pageController: pageController,
            currentIndex: currentPageIndex,
            // onTap: (index) {
            //   pageController.animateToPage(
            //     index,
            //     duration: const Duration(milliseconds: 300),
            //     curve: Curves.easeIn,
            //   );
            //          حـــــــــــــل تانـــــــــــــــــــــــــي
            // },
          ),
          Expanded(
            child: CheckoutStepsPageView(pageController: pageController),
          ),
          CustomButton(
            text: getNextButtonText(currentPageIndex),
            onPressed: () {
              if (context.read<OrderEntity>().payCash != null) {
                pageController.animateToPage(
                  currentPageIndex + 1,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.linear,
                );
              } else {
                showErrorBar(context, 'يرجى تحديد طريقة الدفع');
              }
            },
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }

  String getNextButtonText(int currentPageIndex) {
    switch (currentPageIndex) {
      case 0:
        return 'التالي';
      case 1:
        return 'التالي';

      case 2:
        return 'ادفع عن طريق PayBal';
      default:
        return 'التالي';
    }
  }
}
