import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/src/core/constants/route_path.dart';

import 'package:voting_app/src/core/extensions/extensions.dart';
import 'package:voting_app/src/core/extensions/text_style_extensions.dart';
import 'package:voting_app/src/core/extensions/widget_extensions.dart';
import 'package:voting_app/src/core/themes/themes.dart';
import 'package:voting_app/src/event_voting/data/models/request/contestant_voting_param.dart';
import 'package:voting_app/src/event_voting/presentation/riverpod/post_vote_riverpod.dart';
import 'package:voting_app/src/widgets/custom_button.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomDialogView extends ConsumerWidget {
  const CustomDialogView(
      {Key? key,
      required this.message,
      required this.onConfirmClicked,
      required this.buttonLabel,
      required this.eventDetailsId,
      required this.count,
      required this.type,
      this.denoId})
      : super(key: key);

  final String message;
  final String buttonLabel;
  final VoidCallback onConfirmClicked;
  final String eventDetailsId;
  final int count;
  final String type;
  final String? denoId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(postVoteNotifierProvider, (previous, next) {
      next.maybeWhen(
          orElse: () => SizedBox.new,
          error: (errMessage) {
            Navigator.pop(context);
            context.showErrorSnackBar(
                title: 'error', message: errMessage, context: context);
          },
          success: (data) {
            Navigator.pop(context);
            Navigator.of(context).pushNamed(RoutePath.votingHistoryPage);
          });
    });
    return Builder(builder: (context) {
      return Dialog(
        elevation: 0.w,
        backgroundColor: AppColors.kColorWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20.r),
          ),
        ),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                message,
                style: AppStyles.mediumText14
                    .copyWith(color: AppColors.kColorSecondary)
                    .lineHeight(18.sp),
                textAlign: TextAlign.center,
              ),
              40.verticalSpace,
              Consumer(
                builder: (context, ref, child) {
                  final loading = ref
                      .watch(postVoteNotifierProvider)
                      .maybeWhen(orElse: () => false, loading: () => true);
                  return loading
                      ? const Center(child: CircularProgressIndicator())
                      : CustomButton(
                          width: context.width * .5,
                          title: buttonLabel,
                          titleStyle: AppStyles.mediumText14
                              .copyWith(color: AppColors.kColorWhite)
                              .lineHeight(16.59),
                          onPressed: () {
                            ref
                                .read(postVoteNotifierProvider.notifier)
                                .postVote(
                                    param: ContestantVotingParam(
                                        userId: 'String',
                                        participantId: eventDetailsId,
                                        count: count,
                                        type: type,
                                        username: '9849423081',
                                        denoId: denoId ?? '',
                                        refTransactionId:
                                            Random().nextInt(40).toString()));
                          },
                        );
                },
              )
            ],
          ).padAll(40),
        ),
      );
    });
  }
}
