import 'package:flutter/material.dart';
import '../presentation/travel_dashboard_screen/travel_dashboard_screen.dart';

import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String travelDashboardScreen = '/travel_dashboard_screen';

  static const String appNavigationScreen = '/app_navigation_screen';
  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        travelDashboardScreen: TravelDashboardScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: TravelDashboardScreen.builder,
      };
}
