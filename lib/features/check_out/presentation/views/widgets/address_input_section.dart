import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub_app/core/widgets/custom_text_form_field.dart';
import 'package:fruits_hub_app/features/check_out/domain/entities/order_entity.dart';

class AddressInputSection extends StatelessWidget {
  const AddressInputSection(
      {super.key, required this.formKey, required this.valueListenable});
  final GlobalKey<FormState> formKey;
  final ValueListenable<AutovalidateMode> valueListenable;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ValueListenableBuilder<AutovalidateMode>(
        valueListenable: valueListenable,
        builder: (context, value, child) => Form(
          key: formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              CustomTextFormField(
                hintText: 'الاسم كامل',
                textInputType: TextInputType.text,
                onSaved: (value) {
                  context.read<OrderEntity>().shippingEntity!.name = value!;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                hintText: 'البريد الالكتروني',
                textInputType: TextInputType.emailAddress,
                onSaved: (value) {
                  context.read<OrderEntity>().shippingEntity!.email = value!;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                hintText: 'رقم الهاتف',
                textInputType: TextInputType.phone,
                onSaved: (value) {
                  context.read<OrderEntity>().shippingEntity!.phoneNumber =
                      value!;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                hintText: 'العنوان',
                textInputType: TextInputType.streetAddress,
                onSaved: (value) {
                  context.read<OrderEntity>().shippingEntity!.address = value!;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                hintText: 'المدينة',
                textInputType: TextInputType.streetAddress,
                onSaved: (value) {
                  context.read<OrderEntity>().shippingEntity!.city = value!;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                hintText: 'رقم الطابق',
                textInputType: TextInputType.streetAddress,
                onSaved: (value) {
                  context.read<OrderEntity>().shippingEntity!.floor = value!;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
