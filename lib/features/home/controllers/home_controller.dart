import 'package:get/get.dart';
import 'package:zelora_task/features/home/domain/model/transaction_model.dart';
import 'package:zelora_task/features/home/domain/services/home_services_interface.dart';

class HomeController extends GetxController implements GetxService {
  final HomeServiceInterface homeServiceInterface;
  HomeController({required this.homeServiceInterface});

  RecentTransactions? _recentTransactions;
  RecentTransactions? get recentTransactions=>_recentTransactions;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> getRecentTransaction()async{
    _isLoading=true;
    update();
    RecentTransactions? recentTransactions = await homeServiceInterface.getRecentTransaction();
    if(recentTransactions!=null){
      _recentTransactions=recentTransactions;
    }
    _isLoading=false;
    update();
  }
  

}
