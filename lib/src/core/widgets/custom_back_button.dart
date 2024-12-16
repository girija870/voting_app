import 'package:flutter/material.dart';
import 'package:voting_app/gen/assets.gen.dart';
import 'package:voting_app/src/core/extensions/num_extensions.dart';
import 'package:voting_app/src/core/themes/themes.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({Key? key, required this.onTap}) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 38,
        width: 38,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: 100.rounded,
          boxShadow: [
            BoxShadow(
              color: AppColors.kColorActive.withOpacity(.20),
              blurRadius: 4,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Center(
          child: Assets.icons.backArrow.svg(),
        ),
      ),
    );
  }
}
