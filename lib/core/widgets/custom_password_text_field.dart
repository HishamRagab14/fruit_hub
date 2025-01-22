import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/widgets/custom_text_form_field.dart';

class CustomPasswordTextFormField extends StatefulWidget {
  const CustomPasswordTextFormField({
    super.key, this.onSaved,
  });
  final Function(String?)? onSaved;

  @override
  State<CustomPasswordTextFormField> createState() => _CustomPasswordTextFormFieldState();
}

class _CustomPasswordTextFormFieldState extends State<CustomPasswordTextFormField> {
  bool isObsecure = true;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      isObsecure: isObsecure,
     onSaved: widget.onSaved,
     hintText: 'كلمة المرور',
     textInputType: TextInputType.visiblePassword,
     suffixIcon: GestureDetector(
       onTap: (){
        isObsecure = !isObsecure;
        setState(() {});
       },
       child: isObsecure ? const Icon(Icons.remove_red_eye_outlined,color: Color(0xffC9CECF),) : const Icon(
         Icons.visibility_off,
         color: Color(0xffC9CECF),
       ),
     ),
                  );
  }
}
