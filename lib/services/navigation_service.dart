import 'package:flutter/cupertino.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(
    String routeName, {
    Map<String, String>? queryParams,
  }) async {
    if (queryParams != null) {
      routeName = Uri(path: routeName, queryParameters: queryParams).toString();
    }

    return navigatorKey.currentState?.pushNamed(routeName);
  }

  bool goBack() {
    try {
      navigatorKey.currentState?.pop();
      return true;
    } catch (e) {
      return false;
    }
  }
}
