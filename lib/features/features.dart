

import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum ScreenStyle {
  Normal,
  FullScreen,
  Immerse
}

class Features {
  static int getSplashTime() {
    return 2 * 1000;
  }
  static int getSwitchPageTime() {
    return 300;
  }
  static TransitionType getSwitchPageTransType() {
    return TransitionType.inFromRight;
  }

  static featureScreen(ScreenStyle style) {
    switch (style) {
      case ScreenStyle.FullScreen:
        SystemChrome.setEnabledSystemUIOverlays([]);
        break;
      case ScreenStyle.Immerse:
        SystemUiOverlayStyle overlayStyle = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
        SystemChrome.setSystemUIOverlayStyle(overlayStyle);
        break;
      case ScreenStyle.Normal:
      default:
        SystemChrome.setEnabledSystemUIOverlays(
            [SystemUiOverlay.bottom, SystemUiOverlay.top]);
        break;
    }
  }
}