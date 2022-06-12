import 'package:homework/data/repository/favorite_repository.dart';
import 'package:homework/domain/model/favorite.dart';

class FavoriteUseCase {
  final FavoriteRepository favoriteRepository;

  FavoriteUseCase(this.favoriteRepository);

  Future<void> addFavorite(Favorite favorite) async {
    await favoriteRepository.insertCategory(favorite);
  }

  Future<void> deleteFavorite(Favorite favorite) async {
    await favoriteRepository.deleteCategory(favorite);
  }

  Future<List<Favorite>> getFavoriteList() async {
    return await favoriteRepository.getFavoriteList();
  }

  Future<Favorite?> findFavoriteById(int id) async {
    return await favoriteRepository.findFavoriteById(id);
  }
}