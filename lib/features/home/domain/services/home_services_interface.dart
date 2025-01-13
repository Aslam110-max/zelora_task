
abstract class HomeServiceInterface {
  //----new---
  Future<void> getFavoriteItemAndStore(
      List<String> favoriteItems, List<String> favoriteStores);
}
