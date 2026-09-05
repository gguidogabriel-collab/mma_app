import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/discipline.dart';
import '../providers/favorites_provider.dart';

class DisciplineCard extends StatelessWidget {
  final Discipline discipline;

  const DisciplineCard({
    super.key,
    required this.discipline,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<FavoritesProvider>(
      builder: (context, favoritesProvider, child) {
        final isFavorite = favoritesProvider.isFavorite(discipline.name);

        return Card(
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 32,
                  child: Icon(
                    discipline.icon,
                    size: 32,
                  ),
                ),

                const SizedBox(height: 12),

                Text(
                  discipline.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                Expanded(
                  child: Text(
                    discipline.description,
                    textAlign: TextAlign.center,
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        favoritesProvider.toggleFavorite(
                          discipline.name,
                        );
                      },
                      icon: Icon(
                        isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border,
                      ),
                      tooltip: 'Favorito',
                    ),

                    ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Seleccionaste ${discipline.name}',
                            ),
                          ),
                        );
                      },
                      child: const Text('Ver más'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}