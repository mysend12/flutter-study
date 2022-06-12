import 'package:homework/data/data_source/db/favorite_dao.dart';
import 'package:homework/domain/model/favorite.dart';

class FavoriteRepository {
  final FavoriteDAO favoriteDAO;
  FavoriteRepository(this.favoriteDAO);

  Future<void> deleteCategory(Favorite entity) async {
    favoriteDAO.deleteFavorite(entity);
  }

  Future<void> insertCategory(Favorite entity) async {
    favoriteDAO.insertFavorite(entity);
  }

  Future<List<Favorite>> getFavoriteList() async {
    return favoriteDAO.getFavoriteList();
  }
  
  Future<Favorite?> findFavoriteById(int id) async {
    return favoriteDAO.getFavoriteById(id);
  }
}