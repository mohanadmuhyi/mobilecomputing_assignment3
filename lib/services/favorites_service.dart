import 'package:hive/hive.dart';
import '../models/post_model.dart';

class FavoritesService {
  final Box<Post> favoritesBox = Hive.box<Post>('favoritesBox');

  void toggleFavorite(Post post) {
    if (favoritesBox.containsKey(post.id)) {
      favoritesBox.delete(post.id);
    } else {
      favoritesBox.put(post.id, Post(
        id: post.id,
        title: post.title,
        body: post.body,
        userId: post.userId,
      ));
    }
  }

  bool isFavorite(int id) {
    return favoritesBox.containsKey(id);
  }

  List<Post> getFavorites() {
    return favoritesBox.values.toList();
  }
}