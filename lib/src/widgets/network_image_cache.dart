import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:voting_app/src/core/themes/themes.dart';

class NetworkImageViewer extends StatelessWidget {
  const NetworkImageViewer({
    Key? key,
    required this.imageUrl,
    this.height,
    this.errorWidget,
    this.width,
    this.petType,
    this.fit,
    this.progressIndicator,
  }) : super(key: key);
  final String? imageUrl;
  final int? petType;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final Widget Function(BuildContext, String, DownloadProgress)?
      progressIndicator;
  final Widget Function(BuildContext, String, dynamic)? errorWidget;



  @override
  Widget build(BuildContext context) {
    return
      // imageUrl.isNotNullNotEmpty
      //   ?
      CachedNetworkImage(
            imageUrl: imageUrl ?? '',
            // progressIndicatorBuilder: progressIndicator ??
            //     (_, url, downloadProgress) {
            //       return url.isEmpty
            //           ? Image.asset(
            //               placeholderImage!,
            //               fit: BoxFit.cover,
            //             )
            //           : CircularProgressIndicator(
            //               value: downloadProgress.progress,
            //               color: AppColors.activeAccent,
            //             );
            //     },

            // errorWidget: errorWidget ??
            //     (_, __, ___) => placeholderImage.isNotNullNotEmpty
            //         ? Image.asset(
            //             placeholderImage!,
            //             fit: BoxFit.cover,
            //           )
            //         : Image.asset(AssetHelper.dogPlaceholderImage),
            fit: fit ?? BoxFit.cover,
            height: height,
            width: width,
          );
        // : Image.asset(AssetHelper.dogPlaceholderImage);
  }
}
