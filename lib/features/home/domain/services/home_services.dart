import 'package:zelora_task/features/home/domain/model/transaction_model.dart';
import 'package:zelora_task/features/home/domain/repositories/home_repositories_interface.dart';
import 'package:zelora_task/features/home/domain/services/home_services_interface.dart';

class HomeService implements HomeServiceInterface {
  final HomeRepositoryInterface homeRepositoryInterface;
  HomeService({required this.homeRepositoryInterface});
  
  @override
  Future<RecentTransactions?> getRecentTransaction()async{
    return await homeRepositoryInterface.getRecentTransaction();
  }
  }