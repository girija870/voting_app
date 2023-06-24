import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/src/core/themes/themes.dart';
import 'package:voting_app/src/event_voting/presentation/widgets/timer_count_view.dart';

class HorizontalTimerCountView extends StatelessWidget {
  const HorizontalTimerCountView({
    Key? key,
    required this.endTime,
    this.height = 60,
    this.width = 200,
    this.color = AppColors.kColorWhite,
    this.tileStyle,
    this.valueStyle,
    this.showDays = true,
    this.contentPadding,
  }) : super(key: key);

  final int endTime;
  final double height;
  final double width;
  final Color color;
  final TextStyle? tileStyle;
  final TextStyle? valueStyle;
  final bool showDays;
  final EdgeInsets? contentPadding;

  @override
  Widget build(BuildContext context) {
    return CountdownTimer(
      endTime: endTime,
      onEnd: () {},
      widgetBuilder: (context, time) => Container(
        height: height,
        width: width,
        padding: contentPadding ?? const EdgeInsets.fromLTRB(13, 10, 7, 10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TimerCountView(
              title: showDays ? 'Days' : null,
              value: '${time!.days.toString()}${!showDays ? '  :' : ''}',
              textStyle1: tileStyle,
              textStyle2: valueStyle,
            ),
            TimerCountView(
              title: showDays ? 'Hour' : null,
              value: '${time.hours.toString()}${!showDays ? '  :' : ''}',
              textStyle1: tileStyle,
              textStyle2: valueStyle,
            ),
            TimerCountView(
              title: showDays ? 'Minutes' : null,
              value: '${time.min ?? '00'}',
              textStyle1: tileStyle,
              textStyle2: valueStyle,
            ),
          ],
        ),
      ),
    );
  }
}
