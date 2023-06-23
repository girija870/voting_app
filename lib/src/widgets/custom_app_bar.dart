import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/src/core/extensions/widget_extensions.dart';
import 'package:voting_app/src/core/themes/themes.dart';
import 'package:voting_app/src/widgets/circle_back_button.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    this.appBarTitle,
  }) : super(key: key);

  final String? appBarTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      automaticallyImplyLeading: false,
      title: Text(
        appBarTitle ?? '',
        style: AppStyles.mediumText18.copyWith(color: AppColors.kColorPrimary),
      ).pOnly(right: 42.w),
      leading: CircleButton(
        onTap: () {},
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.sp);
}
