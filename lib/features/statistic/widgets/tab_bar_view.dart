import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
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
    "Flutter": 5,
    "React": 3,
    "Xamarin": 2,
    "Ionic": 2,
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
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
                dataMap: dataMap,
                animationDuration: const Duration(milliseconds: 800),
                chartRadius: 170,
                colorList: [
                  Theme.of(context).secondaryHeaderColor,
                  const Color.fromARGB(255, 233, 30, 220),
                  Theme.of(context).primaryColorDark,
                  Theme.of(context).hintColor
                ],
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
                      "\$20,173,00",
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
                itemCount: 6,
                shrinkWrap: true,
                padding: const EdgeInsets.only(
                  top: Dimensions.paddingSizeExtraSmall,
                ),
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return const DetailsWidget();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
