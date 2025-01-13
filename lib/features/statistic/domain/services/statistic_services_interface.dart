
abstract class StatisticServiceInterface {
  //----new---
  Future<void> getFavoriteItemAndStore(
      List<String> favoriteItems, List<String> favoriteStores);
}
