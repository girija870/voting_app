import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/src/core/constants/route_path.dart';
import 'package:voting_app/src/core/extensions/widget_extensions.dart';
import 'package:voting_app/src/core/themes/themes.dart';
import 'package:voting_app/src/event_voting/data/models/response/event_list/event_list_response_model.dart';
import 'package:voting_app/src/event_voting/data/models/response/history/event_history_response_model.dart';
import 'package:voting_app/src/widgets/custom_button.dart';

class ManualVotingBottomSheet extends StatefulWidget {
  const ManualVotingBottomSheet(
      {super.key, required this.eventDetailsId, required this.price});

  final String eventDetailsId;
  final double? price;

  @override
  State<ManualVotingBottomSheet> createState() =>
      _ManualVotingBottomSheetState();
}

class _ManualVotingBottomSheetState extends State<ManualVotingBottomSheet> {
  final TextEditingController _textEditingController = TextEditingController();

  String errorText = '';
  double totalAmount = 0.0;

  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(
      builder: (context, bool isKeyboardVisible) {
        return FractionallySizedBox(
          heightFactor: isKeyboardVisible ? .8 : .4,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                20.verticalSpace,
                Text(
                  'Enter Votes Manually',
                  style: AppStyles.mediumText16,
                ),
                20.verticalSpace,
                Container(
                  height: 48.h,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.kColorSecondary,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextFormField(
                    controller: _textEditingController,
                    onChanged: (value) {
                      setState(() {
                        if (int.parse(value) < 1) {
                          errorText = ' Please enter more then 0';
                        } else {
                          errorText = '';
                        }
                        totalAmount = double.parse(value) * widget.price!;
                      });
                    },
                    cursorColor: AppColors.kColorSecondary,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.number,
                    style: AppStyles.regularText14.copyWith(
                      overflow: TextOverflow.ellipsis,
                    ),
                    decoration: InputDecoration(
                      counter: const SizedBox.shrink(),
                      hintText: 'Number of Votes',
                      hintStyle: AppStyles.regularText12
                          .copyWith(color: AppColors.kColorNeutralBlack),
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
                if (errorText.isNotEmpty)
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      errorText,
                      style: AppStyles.regularText12
                          .copyWith(color: AppColors.kColorRed),
                    ).py(10),
                  ),
                if (totalAmount > 0)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Total Amount',
                        style: AppStyles.regularText12
                            .copyWith(color: AppColors.kColorNeutralBlack),
                        textAlign: TextAlign.right,
                      ).py(10),
                      const Spacer(),
                      Text(
                        'RS.\t${totalAmount.toString()}',
                        style: AppStyles.regularText12
                            .copyWith(color: AppColors.kColorNeutralBlack),
                        textAlign: TextAlign.right,
                      ).py(10),
                    ],
                  ),
                30.verticalSpace,
                CustomButton(
                  title: 'VOTE NOW',
                  onPressed: () {
                    if (_textEditingController.text.isNotEmpty &&
                        int.parse(_textEditingController.text) > 0) {
                      Navigator.of(context).pushNamed(RoutePath.payForVotePage,
                          arguments: [
                            1,
                            EventListData(
                                id: '3',
                                name: 'name',
                                image: 'image',
                                type: 'type')
                          ]);
                    } else {
                      setState(() {
                        errorText = 'Please enter votes';
                      });
                    }
                  },
                )
              ],
            ).px(20.w),
          ),
        );
      },
    );
  }
}
