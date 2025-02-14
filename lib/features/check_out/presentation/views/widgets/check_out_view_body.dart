import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:fruits_hub_app/core/helper_functions/show_error_bar.dart';
import 'package:fruits_hub_app/core/utils/app_keys.dart';
import 'package:fruits_hub_app/core/widgets/custom_button.dart';
import 'package:fruits_hub_app/features/check_out/domain/entities/order_entity.dart';
import 'package:fruits_hub_app/features/check_out/domain/entities/paypal_payment_entity/paypal_payment_entity.dart';
import 'package:fruits_hub_app/features/check_out/presentation/manager/add_order/add_order_cubit.dart';
import 'package:fruits_hub_app/features/check_out/presentation/views/widgets/check_out_steps.dart';
import 'package:fruits_hub_app/features/check_out/presentation/views/widgets/check_out_steps_page_view.dart';
import 'package:provider/provider.dart';

class CheckOutViewBody extends StatefulWidget {
  const CheckOutViewBody({super.key});

  @override
  State<CheckOutViewBody> createState() => _CheckOutViewBodyState();
}

class _CheckOutViewBodyState extends State<CheckOutViewBody> {
  late PageController pageController;
  ValueNotifier<AutovalidateMode> valueNotifier =
      ValueNotifier(AutovalidateMode.disabled);
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
    valueNotifier.dispose();
    super.dispose();
  }

  int currentPageIndex = 0;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ListenableProvider.value(
      value: pageController,
      child: Padding(
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
              child: CheckoutStepsPageView(
                valueListenable: valueNotifier,
                formKey: formKey,
                pageController: pageController,
              ),
            ),
            CustomButton(
              text: getNextButtonText(currentPageIndex),
              onPressed: () {
                if (currentPageIndex == 0) {
                  _handleShippingSectionValidation(context);
                } else if (currentPageIndex == 1) {
                  _handleAddressSectionValidation();
                } else {
                  var orderEntity = context.read<OrderEntity>();
                  context.read<AddOrderCubit>().addOrder(order: orderEntity);
                  _processPayment(context);
                }
              },
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }

  void _handleShippingSectionValidation(BuildContext context) {
    if (context.read<OrderEntity>().payCash != null) {
      pageController.animateToPage(
        currentPageIndex + 1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.linear,
      );
    } else {
      showBar(context, 'يرجى تحديد طريقة الدفع');
    }
  }

  String getNextButtonText(int currentPageIndex) {
    switch (currentPageIndex) {
      case 0:
        return 'التالي';
      case 1:
        return 'التالي';

      case 2:
        return 'ادفع عن طريق Paypal';
      default:
        return 'التالي';
    }
  }

  void _handleAddressSectionValidation() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      pageController.animateToPage(
        currentPageIndex + 1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.linear,
      );
    } else {
      valueNotifier.value = AutovalidateMode.always;
    }
  }

  void _processPayment(BuildContext context) {
    var orderEntity = context.read<OrderEntity>();
    PaypalPaymentEntity paypalPaymentEntity =
        PaypalPaymentEntity.fromEntity(orderEntity);
    log(paypalPaymentEntity.toJson().toString());
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) => PaypalCheckoutView(
          sandboxMode: true,
          clientId: kPaypalClientId,
          secretKey: kPaypalSecret,
          transactions: [
            paypalPaymentEntity.toJson(),
          ],
          note: "Contact us for any questions on your order.",
          onSuccess: (Map params) async {
            log("onSuccess: $params");
            Navigator.pop(context);
            showBar(context, 'تم الدفع بنجاح');
          },
          onError: (error) {
            log("onError: $error");
            Navigator.pop(context);
          },
          onCancel: () {
            log('cancelled:');
          },
        ),
      ),
    );
  }
}
