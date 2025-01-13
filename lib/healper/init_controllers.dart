

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zelora_task/common/controllers/theme_controller.dart';
import 'package:zelora_task/features/dashboard/controller/dashboard_controller.dart';
import 'package:zelora_task/features/home/controllers/home_controller.dart';
import 'package:zelora_task/features/home/domain/repositories/home_repositories.dart';
import 'package:zelora_task/features/home/domain/repositories/home_repositories_interface.dart';
import 'package:zelora_task/features/home/domain/services/home_services.dart';
import 'package:zelora_task/features/home/domain/services/home_services_interface.dart';
import 'package:zelora_task/features/statistic/controllers/statistic_controller.dart';
import 'package:zelora_task/features/statistic/domain/repositories/statistic_repositories.dart';
import 'package:zelora_task/features/statistic/domain/repositories/statistic_repositories_interface.dart';
import 'package:zelora_task/features/statistic/domain/services/statistic_services.dart';
import 'package:zelora_task/features/statistic/domain/services/statistic_services_interface.dart';

Future<bool> init() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  //Dashboard
  Get.put(DashboardController());

  //Theme
  Get.put(ThemeController(sharedPreferences: sharedPreferences));

  //Home
  HomeRepositoryInterface homeRepositoryInterface = HomeRepository();
  HomeServiceInterface homeServiceInterface = HomeService(homeRepositoryInterface: homeRepositoryInterface);
  Get.put(HomeController(homeServiceInterface: homeServiceInterface));

  //Statistic
  StatisticRepositoryInterface statisticRepositoryInterface = StatisticRepository();
  StatisticServiceInterface statisticServiceInterface = StatisticService(statisticRepositoryInterface: statisticRepositoryInterface);
  Get.put(StatisticController(statisticServiceInterface: statisticServiceInterface));

  return true;
}
