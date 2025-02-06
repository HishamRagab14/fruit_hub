import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/utils/app_colors.dart';
import 'package:fruits_hub_app/core/utils/app_text_styles.dart';
import 'package:fruits_hub_app/core/widgets/notification_widget.dart';

AppBar buildAppBar(BuildContext context,
    {required String title, bool showBackButton = true, Color? backgroundColor,}) {
  return AppBar(
    
    actions: const [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: NotificationWidget(),
      ),
    ],
    leading: Visibility(
      visible: showBackButton,
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Icon(
          Icons.arrow_back_ios_new,
          color: AppColors.textColor,
        ),
      ),
    ),
    centerTitle: true,
    backgroundColor: backgroundColor?? Colors.transparent,
    elevation: 0,
    title: Text(
      title,
      style: TextStyles.bold19.copyWith(color: AppColors.textColor),
    ),
  );
}
