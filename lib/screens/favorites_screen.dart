import 'package:flutter/material.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  final List<String> favorites = [
    'Boxeo',
    'Kickboxing',
    'Lucha',
  ];

  void removeFavorite(int index) {
    setState(() {
      favorites.removeAt(index);
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Favorito eliminado'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favoritos'),
        centerTitle: true,
      ),
      body: favorites.isEmpty
          ? const Center(
              child: Text(
                'No tienes favoritos',
                style: TextStyle(fontSize: 20),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: favorites.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: const CircleAvatar(
                      child: Icon(Icons.favorite),
                    ),
                    title: Text(favorites[index]),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () => removeFavorite(index),
                    ),
                  ),
                );
              },
            ),
    );
  }
}