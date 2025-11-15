import 'package:get/get.dart';

class FavoriteController extends GetxController {
  // Set menyimpan index product yang difavoritkan
  var favorites = <int>{}.obs;

  bool isFavorite(int index) => favorites.contains(index);

  void toggleFavorite(int index) {
    if (favorites.contains(index)) {
      favorites.remove(index);
    } else {
      favorites.add(index);
    }
    update(); 
  }
}
