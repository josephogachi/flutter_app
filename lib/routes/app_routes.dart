import 'package:flutter/material.dart';
import '../presentation/homepage_screen/homepage_screen.dart';
import '../presentation/loginpage_screen/loginpage_screen.dart';
import '../presentation/signup_screen/signup_screen.dart';
import '../presentation/lostitems_screen/lostitems_screen.dart';
import '../presentation/viewitem_pageone_screen/viewitem_pageone_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String homepageScreen = '/homepage_screen';

  static const String loginpageScreen = '/loginpage_screen';

  static const String signupScreen = '/signup_screen';

  static const String lostitemsScreen = '/lostitems_screen';

  static const String viewitemPageoneScreen = '/viewitem_pageone_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        homepageScreen: HomepageScreen.builder,
        loginpageScreen: LoginpageScreen.builder,
        signupScreen: SignupScreen.builder,
        lostitemsScreen: LostitemsScreen.builder,
        viewitemPageoneScreen: ViewitemPageoneScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: HomepageScreen.builder
      };
}
