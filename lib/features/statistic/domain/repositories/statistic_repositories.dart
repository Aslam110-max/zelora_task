import 'package:zelora_task/features/statistic/domain/model/income_outcome_summary_model.dart';
import 'package:zelora_task/features/statistic/domain/repositories/statistic_repositories_interface.dart';
import 'package:zelora_task/utils/sample_data.dart';

class StatisticRepository implements StatisticRepositoryInterface {

  @override
  Future<IncomeOutcomeSummary?> getIncomeData()async{
    IncomeOutcomeSummary incomeData  = IncomeOutcomeSummary.fromJson(SampleData.sampleIncomeData);
    return incomeData;
  }

  @override
  Future<IncomeOutcomeSummary?> getOutcomeData()async{
    IncomeOutcomeSummary outcomeData  = IncomeOutcomeSummary.fromJson(SampleData.sampleOutcomeData);
    return outcomeData;
  }
  
  @override
  Future add(value) {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  Future delete(int? id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future get(int? id) {
    // TODO: implement get
    throw UnimplementedError();
  }

  

  @override
  Future getList() {
    // TODO: implement getList
    throw UnimplementedError();
  }

  @override
  Future update(Map<String, dynamic> body) {
    // TODO: implement update
    throw UnimplementedError();
  }

}