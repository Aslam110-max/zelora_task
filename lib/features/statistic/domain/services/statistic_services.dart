import 'package:zelora_task/features/statistic/domain/model/income_outcome_summary_model.dart';
import 'package:zelora_task/features/statistic/domain/repositories/statistic_repositories_interface.dart';
import 'package:zelora_task/features/statistic/domain/services/statistic_services_interface.dart';

class StatisticService implements StatisticServiceInterface {
  final StatisticRepositoryInterface statisticRepositoryInterface;
  StatisticService({required this.statisticRepositoryInterface});
  
  @override
  Future<IncomeOutcomeSummary?> getIncomeData()async{
    return await statisticRepositoryInterface.getIncomeData();
  }

  @override
  Future<IncomeOutcomeSummary?> getOutcomeData()async{
    return await statisticRepositoryInterface.getOutcomeData();
  }
  }