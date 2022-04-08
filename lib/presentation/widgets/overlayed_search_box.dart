import 'package:flutter/material.dart';
import 'package:persuit/core/theme/colors.dart';

class OverlayedSearchBox extends StatelessWidget {
  final double totalSize;
  final double backgroundHeight;
  final Widget child;

  const OverlayedSearchBox({
    Key? key,
    this.totalSize = 75,
    this.backgroundHeight = 40,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final top = totalSize / 2 - 20;

    return SizedBox(
      height: totalSize,
      child: Stack(
        children: [
          Container(
            width: size.width,
            height: backgroundHeight,
            color: sliverBackgroundColor,
          ),
          Positioned(top: top, left: 20, right: 20, child: child)
        ],
      ),
    );
  }
}
