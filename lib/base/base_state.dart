

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T>  with WidgetsBindingObserver {

  @override
  void initState() {
    super.initState();
    onResume();
    WidgetsBinding.instance?.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    switch (state) {
      case AppLifecycleState.inactive:
        break;
      case AppLifecycleState.resumed:
        onForeground();
        onResume();
        break;
      case AppLifecycleState.paused:
        onPause();
        onBackground();
        break;
      case AppLifecycleState.detached:
        break;
      default:
        break;
    }
  }

  void onPause() { }
  void onResume() { }
  void onForeground() { }
  void onBackground() { }

  @override
  void dispose() {
    WidgetsBinding.instance?.removeObserver(this);
    super.dispose();
  }
}