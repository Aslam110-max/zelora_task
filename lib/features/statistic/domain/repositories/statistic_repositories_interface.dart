
import 'package:zelora_task/interface/repository_interface.dart';

abstract class StatisticRepositoryInterface extends RepositoryInterface {
  Future<void> getFavoriteItemAndStore(
      List<String> favoriteItems, List<String> favoriteStores);
}
