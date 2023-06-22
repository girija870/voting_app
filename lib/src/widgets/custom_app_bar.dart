import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/gen/assets.gen.dart';
import 'package:voting_app/src/core/extensions/text_style_extensions.dart';
import 'package:voting_app/src/core/extensions/widget_extensions.dart';
import 'package:voting_app/src/core/themes/themes.dart';
import 'package:voting_app/src/widgets/circle_back_button.dart';

// ignore: must_be_immutable
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
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(12.r),
          ),
        ),
        title: Text(
          appBarTitle ?? '',
          style:
              AppStyles.mediumText18.copyWith(color: AppColors.kColorPrimary),
        ).pOnly(right: 42.w),
        leading: CircleButton(
          onTap: () {},
        ));
  }

  @override
  Size get preferredSize => Size.fromHeight(60.sp);
}
