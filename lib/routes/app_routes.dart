import 'package:flutter/material.dart';
import '../presentation/frame_screen/frame_screen.dart';
import '../presentation/mobile_number_001_screen/mobile_number_001_screen.dart';
import '../presentation/verfiy_phone_screen/verfiy_phone_screen.dart';
import '../presentation/profile_selection_screen/profile_selection_screen.dart';
import '../presentation/profile_selection_select_screen/profile_selection_select_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String frameScreen = '/frame_screen';

  static const String mobileNumber001Screen = '/mobile_number_001_screen';

  static const String verfiyPhoneScreen = '/verfiy_phone_screen';

  static const String profileSelectionScreen = '/profile_selection_screen';

  static const String profileSelectionSelectScreen =
      '/profile_selection_select_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    frameScreen: (context) => FrameScreen(),
    mobileNumber001Screen: (context) => MobileNumber001Screen(),
    verfiyPhoneScreen: (context) => VerfiyPhoneScreen(),
    profileSelectionScreen: (context) => ProfileSelectionScreen(),
    profileSelectionSelectScreen: (context) => ProfileSelectionSelectScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
