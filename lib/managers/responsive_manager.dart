import 'package:flutter/material.dart';

class ResponsiveManager {
  static final window = WidgetsBinding.instance.window;
  static Size size = window.physicalSize / window.devicePixelRatio;

  /// This method is used to set padding/margin (for the left and Right side)
  /// and width of the screen or widget according to the Viewport width.
  static double getHorizontalSize(double px) => px * (size.width / 390);

  /// This method is used to set padding/margin (for the top and bottom side)
  /// and height of the screen or widget according to the Viewport height.
  static double getVerticalSize(double px) {
    num statusBar = MediaQueryData.fromWindow(window).viewPadding.top;
    num screenHeight = size.height - statusBar;
    return px * (screenHeight / 844);
  }

  /// This method is used to set smallest px in image height and width.
  static double getSize(double px) {
    final height = getVerticalSize(px);
    final width = getHorizontalSize(px);

    if (height < width) {
      return height.toInt().toDouble();
    } else {
      return width.toInt().toDouble();
    }
  }

  /// This method is used to set text font size according to Viewport.
  static double getFontSize(double px) => getSize(px);
}
