import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/utils/assets.dart';
import 'package:fruits_hub_app/core/widgets/search_text_field.dart';

class ReviewViewBody extends StatelessWidget {
  const ReviewViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 50,
                child: Image.asset(Assets.imagesProfileImage)),
                const SizedBox(width: 10,),
              const Flexible(
                child: SearchTextField(
                  hintText: 'اكتب التعليق..',
                  isVisible: false,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
