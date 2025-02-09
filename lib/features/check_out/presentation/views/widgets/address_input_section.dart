import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/widgets/custom_text_form_field.dart';

class AddressInputSection extends StatelessWidget {
  const AddressInputSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 24,),
          CustomTextFormField(hintText: 'الاسم كامل', textInputType: TextInputType.text,),
          SizedBox(height: 16,),
          CustomTextFormField(hintText: 'البريد الالكتروني', textInputType: TextInputType.emailAddress,),
          SizedBox(height: 16,),
          CustomTextFormField(hintText: 'رقم الهاتف', textInputType: TextInputType.phone,),
          SizedBox(height: 16,),
          CustomTextFormField(hintText: 'العنوان', textInputType: TextInputType.streetAddress,),
          SizedBox(height: 16,),
          CustomTextFormField(hintText: 'المدينة', textInputType: TextInputType.streetAddress,),
          SizedBox(height: 16,),
          CustomTextFormField(hintText: 'رقم الطابق', textInputType: TextInputType.streetAddress,),
        ],
      ),
    );
  }
}