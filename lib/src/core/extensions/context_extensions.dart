import 'package:flutter/material.dart';
import 'package:voting_app/src/core/extensions/extensions.dart';
import 'package:voting_app/src/core/extensions/text_style_extensions.dart';
import 'package:voting_app/src/core/themes/themes.dart';

extension ContextX on BuildContext {
  ///width and height getter
  double get width => MediaQuery.of(this).size.width;

  double get height => MediaQuery.of(this).size.height;

  void showErrorSnackBar(
      {required String title,
      required String message,
      required BuildContext context}) {
    OverlayState? overlayState = Overlay.of(this);
    OverlayEntry overlayEntry;

    overlayEntry = OverlayEntry(builder: (context) {
      return Positioned(
        top: 40,
        width: context.width,
        child: Material(
          color: Colors.transparent,
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: 17.rounded,
            ),
            margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
            padding:
                const EdgeInsets.only(left: 18, top: 15, right: 12, bottom: 12),
            width: double.infinity,
            child: Align(
              alignment: Alignment.topLeft,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: AppStyles.mediumText14
                          .copyWith(color: AppColors.kColorWhite)
                          .lineHeight(16.59)),
                  const SizedBox(height: 6),
                  Text(
                    message,
                    style: AppStyles.regularText14.lineHeight(16.59).copyWith(
                        color: AppColors.kColorWhite.withOpacity(0.7)),
                    // overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
    overlayState.insert(overlayEntry);
    Future.delayed(const Duration(seconds: 4)).then((value) {
      overlayEntry.remove();
    });
  }
}
