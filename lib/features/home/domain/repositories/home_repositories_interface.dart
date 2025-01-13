
import 'package:zelora_task/features/home/domain/model/transaction_model.dart';
import 'package:zelora_task/interface/repository_interface.dart';

abstract class HomeRepositoryInterface extends RepositoryInterface {
  Future<RecentTransactions?> getRecentTransaction();
}
