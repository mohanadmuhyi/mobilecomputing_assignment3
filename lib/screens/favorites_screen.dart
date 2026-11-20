import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../models/post_model.dart';

class FavoritesScreen extends StatelessWidget {
  FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final favoritesBox = Hive.box<Post>('favoritesBox');

    return Scaffold(
      appBar: AppBar(title: const Text('Favorites')),
      body: ValueListenableBuilder(
        valueListenable: favoritesBox.listenable(),
        builder: (context, box, _) {
          final favorites = box.values.toList();

          if (favorites.isEmpty) {
            return const Center(
              child: Text('No favorites yet'),
            );
          }

          return ListView.builder(
            itemCount: favorites.length,
            itemBuilder: (context, index) {
              Post post = favorites[index];

              return Card(
                margin: const EdgeInsets.all(8),
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text(post.id.toString()),
                  ),
                  title: Text(
                    post.title,
                    maxLines: 1,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(post.body, maxLines: 2),
                ),
              );
            },
          );
        },
      ),
    );
  }
}