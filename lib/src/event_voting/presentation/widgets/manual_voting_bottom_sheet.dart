import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/src/core/extensions/text_style_extensions.dart';
import 'package:voting_app/src/core/extensions/widget_extensions.dart';
import 'package:voting_app/src/core/themes/themes.dart';
import 'package:voting_app/src/widgets/custom_button.dart';

class ManualVotingBottomSheet extends StatefulWidget {
  const ManualVotingBottomSheet({Key? key}) : super(key: key);

  @override
  State<ManualVotingBottomSheet> createState() =>
      _ManualVotingBottomSheetState();
}

class _ManualVotingBottomSheetState extends State<ManualVotingBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(
      builder: (context, bool isKeyboardVisible) {
        print('keyVisi::$isKeyboardVisible');
        return FractionallySizedBox(
          heightFactor: isKeyboardVisible ? .6 : .4,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                20.verticalSpace,
                Text(
                  'Enter Votes Manually',
                  style: AppStyles.text16PxMedium,
                ),

                20.verticalSpace,
                Container(
                  height: 48.h,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.activeAccent,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextFormField(
                    onChanged: (value) {},
                    cursorColor: AppColors.activeAccent,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.text,
                    style: AppStyles.text14PxRegular.appFontFamily.copyWith(
                      overflow: TextOverflow.ellipsis,
                    ),
                    decoration: InputDecoration(
                      counter: const SizedBox.shrink(),
                      hintText: 'Number of Votes',
                      hintStyle: AppStyles
                          .text12PxRegular.appFontFamily.inActiveAccent,
                      contentPadding: const EdgeInsets.all(16),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(6.r),
                        gapPadding: 0,
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(6.r),
                        gapPadding: 0,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(6.r),
                        gapPadding: 0,
                      ),
                      isDense: true,
                    ),
                  ),
                ),
                // if (errorText != null && errorText.isNotEmpty)
                //   Text(
                //     errorText,
                //     style: AppStyles.text12PxRegular.appFontFamily.redColor,
                //     textAlign: TextAlign.left,
                //   ).py(10)
                30.verticalSpace,
                const CustomButton(
                  title: 'VOTE NOW',
                )
              ],
            ).px(20.w),
          ),
        );
      },
    );
  }
}
