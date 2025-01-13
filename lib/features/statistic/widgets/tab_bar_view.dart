import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:zelora_task/features/statistic/controllers/statistic_controller.dart';
import 'package:zelora_task/features/statistic/domain/model/income_outcome_summary_model.dart';
import 'package:zelora_task/features/statistic/widgets/details_widget.dart';
import 'package:zelora_task/utils/dimensions.dart';
import 'package:zelora_task/utils/styles.dart';

class TabBarViewWidget extends StatefulWidget {
  final IncomeOutcomeSummary? data;
  final bool isIncome;
  const TabBarViewWidget(
      {super.key, required this.data, required this.isIncome});

  @override
  State<TabBarViewWidget> createState() => _TabBarViewWidgetState();
}

class _TabBarViewWidgetState extends State<TabBarViewWidget> {
  Map<String, double> dataMap = {
    "Flutter": 100,
    "React": 40,
    "Xamarin": 300,
    "Ionic": 240,
  };
  @override
  Widget build(BuildContext context) {
    List<Color> colorList = [
      Theme.of(context).secondaryHeaderColor,
      const Color.fromARGB(255, 233, 30, 220),
      Theme.of(context).primaryColorDark,
      Theme.of(context).hintColor
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: GetBuilder<StatisticController>(builder: (statisticController){
        return statisticController.isLoading?
        const Center(child: CircularProgressIndicator()):
        ((widget.isIncome&&statisticController.incomeData==null)||(!widget.isIncome&&statisticController.outcomeData==null))?
        const Center(child: Text("No data available"),):
         Padding(
        padding: const EdgeInsets.only(
            left: Dimensions.paddingSizeLarge,
            right: Dimensions.paddingSizeLarge),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              PieChart(
                dataMap:widget.isIncome?statisticController.incomePercentage:statisticController.outcomePercentage,
                animationDuration: const Duration(milliseconds: 800),
                chartRadius: 170,
                colorList: colorList,
                initialAngleInDegree: 0,
                chartType: ChartType.ring,
                ringStrokeWidth: 15,
                centerWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "TOTAL ${widget.isIncome ? "INCOME" : "OUTCOME"}",
                      style: robotoBold.copyWith(
                          color: Colors.grey,
                          fontSize: Dimensions.fontSizeExtraSmall),
                    ),
                    Text(
                      "\$${widget.isIncome? (statisticController.totalIncome)!.toStringAsFixed(0):(statisticController.totalOutcome)!.toStringAsFixed(0)}",
                      style: robotoBlack.copyWith(
                          fontSize: Dimensions.fontSizeExtraLarge),
                    )
                  ],
                ),
                chartValuesOptions: const ChartValuesOptions(
                  showChartValueBackground: false,
                  showChartValues: false,
                  showChartValuesInPercentage: false,
                  showChartValuesOutside: false,
                  decimalPlaces: 1,
                ),
                legendOptions: const LegendOptions(
                  showLegends: false,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "${widget.isIncome ? "Income" : "Outcome"} Breackdown",
                style: robotoBold.copyWith(fontSize: Dimensions.fontSizeLarge),
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.builder(
                itemCount: widget.isIncome?statisticController.incomePercentage.length:statisticController.outcomePercentage.length,
                shrinkWrap: true,
                padding: const EdgeInsets.only(
                  top: Dimensions.paddingSizeExtraSmall,
                ),
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return DetailsWidget(
                    color: colorList[index], 
                    percentage:widget.isIncome? statisticController.incomePercentage[statisticController.incomeData!.data[index].type]!:statisticController.outcomePercentage[statisticController.outcomeData!.data[index].type]!, 
                    type:widget.isIncome?  statisticController.incomeData!.data[index].type: statisticController.outcomeData!.data[index].type, 
                    value:widget.isIncome? statisticController.incomeData!.data[index].amount:statisticController.outcomeData!.data[index].amount);
                },
              ),
            ],
          ),
        ),
         );

      })    );
  }
}
