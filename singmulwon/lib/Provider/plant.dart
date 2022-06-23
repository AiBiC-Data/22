import 'package:flutter/foundation.dart';

class Plant with ChangeNotifier {
  final String id;
  final String name;
  final String sort;
  final String image;
  final double water;
  final double light;
  final double favorite;
  bool isFavorite;

  Plant({
    @required this.id,
    @required this.name,
    @required this.sort,
    @required this.image,
    @required this.water,
    @required this.light,
    @required this.favorite,
    this.isFavorite = false,
  });

  void toggleFavoriteStatus() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
