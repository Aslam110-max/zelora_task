import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:zelora_task/features/statistic/controllers/statistic_controller.dart';
import 'package:zelora_task/features/statistic/widgets/tab_bar_view.dart';
import 'package:zelora_task/utils/dimensions.dart';
import 'package:zelora_task/utils/styles.dart';

class StatisticScreen extends StatefulWidget {
  const StatisticScreen({super.key});

  @override
  State<StatisticScreen> createState() => _StatisticScreenState();
}

class _StatisticScreenState extends State<StatisticScreen> {
  String? selectedDate;
  List<String> dates = [
    "May 2024",
    "June 2024",
    "July 2024",
    "Aug 2024",
    "Sep 2024",
    "Oct 2024",
    "Nov 2024",
    "Dec 2024"
  ];
  @override
  void initState() {
    super.initState();
    Get.find<StatisticController>().getIncomeData();
    Get.find<StatisticController>().getOutcomeData();
    selectedDate = dates.first;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: false,
            title: Text(
              "Statistic",
              style:
                  robotoBold.copyWith(fontSize: Dimensions.fontSizeExtraLarge),
            ),
            leading: const Icon(
              Icons.arrow_back_ios_new,
              size: 18,
            ),
            actions: [
              Padding(
                padding:
                    const EdgeInsets.only(right: Dimensions.paddingSizeDefault),
                child: SizedBox(
                  height: 35,
                  width: 130,
                  child: DropdownButtonFormField<String>(
                    value: selectedDate,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 1.0),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).secondaryHeaderColor,
                            width: 1.5),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 1),
                    ),
                    items: dates.map((date) {
                      return DropdownMenuItem<String>(
                        value: date,
                        child: Text(date),
                      );
                    }).toList(),
                    onChanged: (date) {
                      setState(() {
                        selectedDate = date;
                      });
                    },
                    elevation: 1,
                  ),
                ),
              )
            ],
            bottom: TabBar(
              indicatorColor:
                  Theme.of(context).secondaryHeaderColor,
              indicatorWeight: 3, 
              indicatorSize: TabBarIndicatorSize
                  .tab, 
              labelColor: Colors.black,
              unselectedLabelColor:
                  Colors.grey, 
              labelStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              unselectedLabelStyle: const TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 14,
              ),
              tabs: const [
                Tab(
                  text: "Income",
                ),
                Tab(
                  text: "Outcome",
                ),
              ],
            )),
        body: GetBuilder<StatisticController>(builder: (statisticController){
          return TabBarView(
          children: [
            TabBarViewWidget(data: statisticController.incomeData,isIncome: true,),
            TabBarViewWidget(data: statisticController.outcomeData,isIncome: false,)
          ],
        );
        })
      ),
    );
  }
}
