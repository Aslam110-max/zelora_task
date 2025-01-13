import 'package:zelora_task/features/home/domain/repositories/home_repositories_interface.dart';
import 'package:zelora_task/features/home/domain/services/home_services_interface.dart';

class HomeService implements HomeServiceInterface {
  final HomeRepositoryInterface homeRepositoryInterface;
  HomeService({required this.homeRepositoryInterface});
  
  @override
  Future<void> getFavoriteItemAndStore(List<String> favoriteItems, List<String> favoriteStores) {
    // TODO: implement getFavoriteItemAndStore
    throw UnimplementedError();
  }
  }