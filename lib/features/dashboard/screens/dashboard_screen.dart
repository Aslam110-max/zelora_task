import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zelora_task/features/dashboard/controller/dashboard_controller.dart';
import 'package:zelora_task/features/dashboard/widgets/custom_bottom_nav_bar.dart';
import 'package:zelora_task/features/home/screens/home_screen.dart';
import 'package:zelora_task/features/statistic/screens/statistic_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final List<Widget> _screens = [
    const HomeScreen(),
    const Center(child: Text("Cart")),
    const Center(child: Text("Scanner")),
    const StatisticScreen(),
    const Center(child: Text("Profile")),
  ];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (dashboardController){
      return Scaffold(
         body: _screens[dashboardController.currentIndex],
      bottomNavigationBar: const CustomBottomNavBar()
      );
    });
  }
}