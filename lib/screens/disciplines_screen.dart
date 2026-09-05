import 'package:flutter/material.dart';
import '../models/discipline.dart';
import '../widgets/discipline_card.dart';

class DisciplinesScreen extends StatelessWidget {
  const DisciplinesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final disciplines = [
      Discipline(
        name: 'Striking',
        description: 'Boxeo, kickboxing y técnicas de golpeo.',
        icon: Icons.sports_mma,
      ),
      Discipline(
        name: 'Brazilian Jiu-Jitsu',
        description: 'Control, llaves y técnicas de suelo.',
        icon: Icons.sports_kabaddi,
      ),
      Discipline(
        name: 'Wrestling',
        description: 'Derribos, control y lucha cuerpo a cuerpo.',
        icon: Icons.fitness_center,
      ),
      Discipline(
        name: 'Muay Thai',
        description: 'Golpes con puños, codos, rodillas y piernas.',
        icon: Icons.sports_mma,
      ),
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

            return DisciplineCard(
              discipline: discipline,
            );
          },
        ),
      ),
    );
  }
}