
import 'package:zelora_task/features/statistic/domain/model/income_outcome_summary_model.dart';
import 'package:zelora_task/interface/repository_interface.dart';

abstract class StatisticRepositoryInterface extends RepositoryInterface {
  Future<IncomeOutcomeSummary?> getIncomeData();
  Future<IncomeOutcomeSummary?> getOutcomeData();
}
