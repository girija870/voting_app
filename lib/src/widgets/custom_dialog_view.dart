import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/src/core/di/injection.dart';

import 'package:voting_app/src/core/extensions/extensions.dart';
import 'package:voting_app/src/core/extensions/text_style_extensions.dart';
import 'package:voting_app/src/core/extensions/widget_extensions.dart';
import 'package:voting_app/src/core/themes/themes.dart';
import 'package:voting_app/src/event_voting/data/models/request/contestant_voting_param.dart';
import 'package:voting_app/src/event_voting/data/models/response/denomination/denomination_list_response_model.dart';
import 'package:voting_app/src/event_voting/presentation/cubit/post_vote/post_vote_cubit.dart';
import 'package:voting_app/src/event_voting/presentation/pages/voting_history_page.dart';
import 'package:voting_app/src/widgets/custom_button.dart';
import 'package:voting_app/src/widgets/error_handler_widget.dart';

class CustomDialogView extends StatelessWidget {
  const CustomDialogView(
      {Key? key,
      required this.message,
      required this.onConfirmClicked,
      required this.buttonLabel,
      required this.eventDetailsId,
      required this.denominationListResponseModel})
      : super(key: key);

  final String message;
  final String buttonLabel;
  final VoidCallback onConfirmClicked;
  final String eventDetailsId;
  final DenominationListResponseModel denominationListResponseModel;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => getIt<PostVoteCubit>(),
      child: Builder(builder: (context) {
        return Dialog(
          elevation: 0.w,
          backgroundColor: AppColors.whiteColor,
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
                  style: AppStyles.text14PxMedium.appFontFamily.activeAccent
                      .lineHeight(18.sp),
                  textAlign: TextAlign.center,
                ),
                40.verticalSpace,
                BlocConsumer<PostVoteCubit, PostVoteState>(
                  listener: (context, state) {
                    state.maybeWhen(
                        orElse: () => SizedBox.new,
                        error: (errMessage) {
                          Navigator.pop(context);
                          context.showErrorSnackBar(
                              title: 'error',
                              message: errMessage,
                              context: context);
                        },
                        success: (data) {
                          Navigator.pop(context);

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const VotingHistoryPage(),
                              ));
                        });
                  },
                  builder: (context, state) {
                    final loading = context.select((PostVoteCubit bloc) => bloc
                        .state
                        .maybeWhen(orElse: () => false, loading: () => true));
                    return loading
                        ? const Center(child: CircularProgressIndicator())
                        : CustomButton(
                            width: context.width * .5,
                            title: buttonLabel,
                            titleStyle: AppStyles
                                .text14PxMedium.appFontFamily.whiteColor
                                .lineHeight(16.59),
                            onPressed: () {
                              context.read<PostVoteCubit>().postVote(
                                  param: ContestantVotingParam(
                                      userId: '',
                                      participantId: eventDetailsId,
                                      count:
                                          denominationListResponseModel.count,
                                      type: denominationListResponseModel.type,
                                      username: '9849423081',
                                      denoId: denominationListResponseModel.id,
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
      }),
    );
  }
}
