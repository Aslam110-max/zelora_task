
import 'package:zelora_task/features/statistic/domain/model/income_outcome_summary_model.dart';

abstract class StatisticServiceInterface {
 Future<IncomeOutcomeSummary?> getIncomeData();
 Future<IncomeOutcomeSummary?> getOutcomeData();
}
