import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/src/core/themes/themes.dart';

class ErrorHandlerWidget extends StatelessWidget {
  const ErrorHandlerWidget({
    Key? key,
    required this.errorMessage,
    required this.onRetry,
  }) : super(key: key);
  final String? errorMessage;
  final Function() onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.h),
          child: Column(
            children: [
              Text(errorMessage!,
                  style: AppStyles.mediumText12
                      .copyWith(color: AppColors.kColorSecondary)),
              SizedBox(
                height: 10.h,
              ),
              GestureDetector(
                onTap: onRetry,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                    vertical: 2.h,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.kColorSecondary),
                      borderRadius: BorderRadius.circular(10.r)),
                  child: const Text('Retry'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
