import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CacheNetworkImageViewer extends StatelessWidget {
  const CacheNetworkImageViewer({
    Key? key,
    required this.imageUrl,
    this.height,
    this.errorWidget,
    this.width,
    this.fit,
    this.progressIndicator,
  }) : super(key: key);
  final String? imageUrl;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final Widget Function(BuildContext, String, DownloadProgress)?
      progressIndicator;
  final Widget Function(BuildContext, String, dynamic)? errorWidget;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl ?? '',
      // progressIndicatorBuilder: progressIndicator ??
      //     (_, url, downloadProgress) {
      //       return CircularProgressIndicator(
      //         value: downloadProgress.progress,
      //         color: AppColors.activeAccent,
      //       );
      //     },
      fit: fit ?? BoxFit.cover,
      height: height,
      width: width,
    );
    // : Image.asset(AssetHelper.dogPlaceholderImage);
  }
}
