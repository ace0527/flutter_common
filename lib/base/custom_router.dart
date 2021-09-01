

import 'package:common/features/features.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';


class CustomHandler extends Handler {

  late final HandlerFunc func;

  CustomHandler({
    required this.func,
    type = HandlerType.route,
    ScreenStyle screenType : ScreenStyle.Normal}) : super(type : type, handlerFunc : (BuildContext? context, Map<String, List<String>> parameters) {
    Features.featureScreen(screenType);
    return func.call(context, parameters);
  });
}

class CustomFluroRouter extends FluroRouter {

  @override
  Future navigateTo(BuildContext context,
      String path, {
        bool replace = false,
        bool clearStack = false,
        bool maintainState = true,
        bool rootNavigator = false,
        TransitionType? transition,
        Duration? transitionDuration,
        RouteTransitionsBuilder? transitionBuilder,
        RouteSettings? routeSettings
      }) {
    return super.navigateTo(
        context,
        path,
        replace: replace,
        clearStack: clearStack,
        maintainState: maintainState,
        rootNavigator: rootNavigator,
        transition: transition,
        transitionDuration: transitionDuration,
        transitionBuilder: transitionBuilder,
        routeSettings: routeSettings
    );
  }
}