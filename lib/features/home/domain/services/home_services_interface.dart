
import 'package:zelora_task/features/home/domain/model/transaction_model.dart';

abstract class HomeServiceInterface {
  //----new---
  Future<RecentTransactions?> getRecentTransaction();
}
