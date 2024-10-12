import 'package:flutter/material.dart';

class EtMineImageUrl extends StatelessWidget {
  final String? url;
  final double? widthImage;
  final double? heightImage;

  const EtMineImageUrl(
      {super.key, this.url, this.heightImage, this.widthImage});

  @override
  Widget build(BuildContext context) {
    Widget element = Image.network(
      url!,
      width: widthImage,
      height: heightImage,
    );
    return element;
  }
}
