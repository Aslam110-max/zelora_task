import 'package:get/get.dart';
import 'package:zelora_task/features/statistic/domain/model/income_outcome_summary_model.dart';
import 'package:zelora_task/features/statistic/domain/services/statistic_services_interface.dart';

class StatisticController extends GetxController implements GetxService {
  final StatisticServiceInterface statisticServiceInterface;
  StatisticController({required this.statisticServiceInterface});

   bool _isLoading = false;
  bool get isLoading => _isLoading;

  IncomeOutcomeSummary? _incomeData;
  IncomeOutcomeSummary? get incomeData=>_incomeData;

  IncomeOutcomeSummary? _outcomeData;
  IncomeOutcomeSummary? get outcomeData=>_outcomeData;

  double? _totalIncome;
  double? get totalIncome=>_totalIncome;

  double? _totalOutcome;
  double? get totalOutcome=>_totalOutcome;

   Map<String,double> _incomePercentage={};
  Map<String,double> get incomePercentage =>_incomePercentage;

   Map<String,double> _outcomePercentage={};
  Map<String,double> get outcomePercentage =>_outcomePercentage;

  Future<void> getIncomeData()async{
    _isLoading=true;
    update();
    IncomeOutcomeSummary? incomeData = await statisticServiceInterface.getIncomeData();
    if(incomeData!=null){
      _incomeData = incomeData;
      _totalIncome =incomeData.data.fold(0.0, (sum, item) => sum! + item.amount);
      for (var item in incomeData.data) {
    double percentage = (item.amount / _totalIncome!) * 100;
    _incomePercentage[item.type] = percentage;
  }
    }
    update();
  }

  Future<void> getOutcomeData()async{
    IncomeOutcomeSummary? outcomeData = await statisticServiceInterface.getOutcomeData();
    if(outcomeData!=null){
      _outcomeData = outcomeData;
      _totalOutcome =outcomeData.data.fold(0.0, (sum, item) => sum! + item.amount);
      for (var item in outcomeData.data) {
    double percentage = (item.amount / _totalOutcome!) * 100;
    _outcomePercentage[item.type] = percentage;
  }
    }
    _isLoading=false;
    update();
  }

}
