import 'package:flutter/material.dart';

class DisciplinesScreen extends StatelessWidget {
  const DisciplinesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final disciplines = [
      {
        'name': 'Striking',
        'description': 'Boxeo, kickboxing y técnicas de golpeo.',
        'icon': Icons.sports_mma,
      },
      {
        'name': 'Brazilian Jiu-Jitsu',
        'description': 'Control, llaves y técnicas de suelo.',
        'icon': Icons.sports_kabaddi,
      },
      {
        'name': 'Wrestling',
        'description': 'Derribos, control y lucha cuerpo a cuerpo.',
        'icon': Icons.fitness_center,
      },
      {
        'name': 'Muay Thai',
        'description': 'Golpes con puños, codos, rodillas y piernas.',
        'icon': Icons.sports_mma,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Disciplinas'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.85,
          ),
          itemCount: disciplines.length,
          itemBuilder: (context, index) {
            final discipline = disciplines[index];

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
                        discipline['icon'] as IconData,
                        size: 32,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      discipline['name'] as String,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Expanded(
                      child: Text(
                        discipline['description'] as String,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Seleccionaste ${discipline['name']}',
                            ),
                          ),
                        );
                      },
                      child: const Text('Ver más'),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}