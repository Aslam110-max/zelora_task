
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zelora_task/common/controllers/theme_controller.dart';
import 'package:zelora_task/healper/routeHealper.dart';
import 'package:zelora_task/theme/dark_theme.dart';
import 'package:zelora_task/theme/light_theme.dart';
import 'package:zelora_task/utils/app_constants.dart';
import 'package:zelora_task/healper/init_controllers.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  bool init = await di.init();
  runApp(const MyApp());
  

}

class MyApp extends StatefulWidget {
  const MyApp({super.key,});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(builder: (themeController){
      return GetMaterialApp(
                  title: AppConstants.appName,
                  debugShowCheckedModeBanner: false,
                  navigatorKey: Get.key,
                  scrollBehavior: const MaterialScrollBehavior().copyWith(
                    dragDevices: {
                      PointerDeviceKind.mouse,
                      PointerDeviceKind.touch
                    },
                  ),
                  theme: themeController.darkTheme ? dark : light,
                  initialRoute: RouteHelper.getInitialRoute(),
                  getPages: RouteHelper.routes,
                  defaultTransition: Transition.topLevel,
                  transitionDuration: const Duration(milliseconds: 500),
                  
                );

   });
    
    
  }
}


