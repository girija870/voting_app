import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/src/core/extensions/num_extensions.dart';
import 'package:voting_app/src/core/themes/themes.dart';

class RoundedDateViewer extends StatelessWidget {
  const RoundedDateViewer({
    Key? key,
    required this.month,
    required this.date,
    this.backgroundColor,
  }) : super(key: key);

  final String month;
  final String date;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.kColorWhite,
        borderRadius: 20.rounded,
      ),
      child: Column(
        children: [
          Text(
            month,
            style: AppStyles.regularText14.copyWith(
              color: AppColors.kColorDark,
            ),
          ),
          8.verticalSpace,
          Text(
            date,
            style: AppStyles.semiBoldText20.copyWith(
              color: AppColors.kColorActive,
            ),
          ),
        ],
      ),
    );
  }
}
