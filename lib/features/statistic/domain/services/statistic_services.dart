import 'package:zelora_task/features/statistic/domain/repositories/statistic_repositories_interface.dart';
import 'package:zelora_task/features/statistic/domain/services/statistic_services_interface.dart';

class StatisticService implements StatisticServiceInterface {
  final StatisticRepositoryInterface statisticRepositoryInterface;
  StatisticService({required this.statisticRepositoryInterface});
  
  @override
  Future<void> getFavoriteItemAndStore(List<String> favoriteItems, List<String> favoriteStores) {
    // TODO: implement getFavoriteItemAndStore
    throw UnimplementedError();
  }
  }