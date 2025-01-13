import 'package:zelora_task/features/home/domain/model/transaction_model.dart';
import 'package:zelora_task/features/home/domain/repositories/home_repositories_interface.dart';
import 'package:zelora_task/utils/sample_data.dart';

class HomeRepository implements HomeRepositoryInterface {

@override
  Future<RecentTransactions?> getRecentTransaction()async{
    RecentTransactions recentTransactions = RecentTransactions.fromJson(SampleData.sampleTransactionData);
    return recentTransactions;
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