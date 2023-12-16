import 'package:flutter/material.dart';
import 'package:abdullah_s_application2/presentation/login_screen/login_screen.dart';
import 'package:abdullah_s_application2/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:abdullah_s_application2/presentation/home_screen/home_screen.dart';
import 'package:abdullah_s_application2/presentation/confirm_ride_screen/confirm_ride_screen.dart';
import 'package:abdullah_s_application2/presentation/ride_detail_screen/ride_detail_screen.dart';
import 'package:abdullah_s_application2/presentation/ride_history_screen/ride_history_screen.dart';
import 'package:abdullah_s_application2/presentation/payment_methods_screen/payment_methods_screen.dart';
import 'package:abdullah_s_application2/presentation/my_profile_screen/my_profile_screen.dart';
import 'package:abdullah_s_application2/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String loginScreen = '/login_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String homeScreen = '/home_screen';

  static const String confirmRideScreen = '/confirm_ride_screen';

  static const String rideDetailScreen = '/ride_detail_screen';

  static const String rideHistoryScreen = '/ride_history_screen';

  static const String paymentMethodsScreen = '/payment_methods_screen';

  static const String myProfileScreen = '/my_profile_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    loginScreen: (context) => LoginScreen(),
    signUpScreen: (context) => SignUpScreen(),
    homeScreen: (context) => HomeScreen(),
    confirmRideScreen: (context) => ConfirmRideScreen(),
    rideDetailScreen: (context) => RideDetailScreen(),
    rideHistoryScreen: (context) => RideHistoryScreen(),
    paymentMethodsScreen: (context) => PaymentMethodsScreen(),
    myProfileScreen: (context) => MyProfileScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
