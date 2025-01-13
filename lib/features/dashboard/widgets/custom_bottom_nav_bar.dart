import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zelora_task/common/widgets/custom_icons.dart';
import 'package:zelora_task/features/dashboard/controller/dashboard_controller.dart';
import 'package:zelora_task/utils/dimensions.dart';
import 'package:zelora_task/utils/styles.dart';
import 'package:zelora_task/utils/svg_icons.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  List<String> activeIcons=[
    SvgIcons.homeActive,
    SvgIcons.cardActive,
    SvgIcons.scanner,
    SvgIcons.statisticActive,
    SvgIcons.profileActive
    ];
    List<String> inactiveIcons=[
    SvgIcons.homeInactive,
    SvgIcons.cardInactive,
    SvgIcons.scanner,
    SvgIcons.statisticInactive,
    SvgIcons.profileInactive
    ];
    List<String> labels=[
      "Home",
      "Card",
      "Scanner",
      "Statistic",
      "Profile"
    ];
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 2,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildNavItem(0),
            _buildNavItem(1),
            _buildNavItem(2),
            _buildNavItem(3),
            _buildNavItem(4),
          ],
        ),
      );
    
  }
  Widget _buildNavItem(int index) {
    return GetBuilder<DashboardController>(builder: (dashboardController){
      bool isActive = dashboardController.currentIndex==index;
      return GestureDetector(
      onTap: () {
        dashboardController.setCurrentIndex(index);
      },
      child:index==2?CircleAvatar(radius: 25,backgroundColor: Theme.of(context).secondaryHeaderColor,child: Center(child: CustomIcon(size: 25,svgPath: isActive? activeIcons[index]:inactiveIcons[index]),),) :Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomIcon(size: 25,svgPath: isActive? activeIcons[index]:inactiveIcons[index]),
          Text(
            labels[index],
            style: robotoRegular.copyWith(color:isActive? Theme.of(context).primaryColor:Theme.of(context).disabledColor,fontSize: Dimensions.fontSizeSmall),
          ),
        ],
      ),
    );

    }) ; }
}