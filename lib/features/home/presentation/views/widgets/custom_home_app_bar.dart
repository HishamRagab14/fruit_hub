import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/helper_functions/get_user.dart';
import 'package:fruits_hub_app/core/utils/app_text_styles.dart';
import 'package:fruits_hub_app/core/utils/assets.dart';
import 'package:fruits_hub_app/core/widgets/notification_widget.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(Assets.imagesProfileImage),
      title: Text(
        'صباح الخير !..',
        style: TextStyles.regular16.copyWith(color: const Color(0xff949D9E)),
      ),
      subtitle: Text(
        getUser().name,
        style: TextStyles.bold16.copyWith(color: const Color(0xff0C0D0D)),
      ),
      trailing: const NotificationWidget(),
    );
  }
}
