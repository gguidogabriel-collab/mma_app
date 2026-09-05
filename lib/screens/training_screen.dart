import 'package:flutter/material.dart';
import '../widgets/training_card.dart';

class TrainingScreen extends StatefulWidget {
  const TrainingScreen({super.key});

  @override
  State<TrainingScreen> createState() => _TrainingScreenState();
}

class _TrainingScreenState extends State<TrainingScreen> {
  int rounds = 0;
  bool showTip = false;

  void addRound() {
    setState(() {
      rounds++;
    });
  }

  void toggleTip() {
    setState(() {
      showTip = !showTip;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entrenamiento'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              'Rutina MMA',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: ListView(
                children: const [
                  TrainingCard(
                    icon: Icons.directions_run,
                    title: 'Cardio',
                    subtitle: 'Mejora tu resistencia y condición física.',
                  ),
                  TrainingCard(
                    icon: Icons.sports_mma,
                    title: 'Striking',
                    subtitle: 'Trabaja golpes, combinaciones y defensa.',
                  ),
                  TrainingCard(
                    icon: Icons.fitness_center,
                    title: 'Fuerza',
                    subtitle: 'Desarrolla potencia y resistencia muscular.',
                  ),
                ],
              ),
            ),

            const Divider(),

            Text(
              'Rounds completados: $rounds',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            ElevatedButton.icon(
              onPressed: addRound,
              icon: const Icon(Icons.add),
              label: const Text('Agregar round'),
            ),

            const SizedBox(height: 8),

            ElevatedButton(
              onPressed: toggleTip,
              child: Text(
                showTip ? 'Ocultar consejo' : 'Mostrar consejo',
              ),
            ),

            if (showTip)
              const Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  'Consejo: mantén una buena técnica antes de aumentar la intensidad.',
                  textAlign: TextAlign.center,
                ),
              ),
          ],
        ),
      ),
    );
  }
}