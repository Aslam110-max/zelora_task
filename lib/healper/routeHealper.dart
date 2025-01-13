import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zelora_task/features/dashboard/screens/dashboard_screen.dart';

class RouteHelper {
  static const String initial = '/';
  static const String statistic = '/statistic';
 

  static String getInitialRoute() => initial;
  static String getStatisticRoute(int pageIndex,) => statistic;
  
  static List<GetPage> routes = [
    GetPage(name: initial, page: () =>  const DashboardScreen()),
  ];

  static Widget getRoute(
    Widget navigateTo,
  ) {
    return navigateTo;
  }
}
