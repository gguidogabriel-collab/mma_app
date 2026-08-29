import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String mensaje = 'Entrena duro. Nunca te rindas.';

  void motivar() {
    setState(() {
      mensaje = '¡El entrenamiento empieza ahora! 🥊';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MMA FIGHTER'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 45,
                      child: Icon(
                        Icons.sports_mma,
                        size: 50,
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'MIXED MARTIAL ARTS',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Fuerza • Disciplina • Técnica',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            Card(
              child: ListTile(
                leading: const Icon(Icons.info_outline),
                title: const Text(
                  '¿Qué es el MMA?',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: const Text(
                  'Las artes marciales mixtas combinan boxeo, '
                  'kickboxing, lucha y jiu-jitsu brasileño.',
                ),
              ),
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Column(
                  children: [
                    Icon(Icons.sports_mma, size: 35),
                    SizedBox(height: 5),
                    Text('Striking'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.fitness_center, size: 35),
                    SizedBox(height: 5),
                    Text('Fuerza'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.directions_run, size: 35),
                    SizedBox(height: 5),
                    Text('Cardio'),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 25),

            Text(
              mensaje,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 15),

            ElevatedButton.icon(
              onPressed: motivar,
              icon: const Icon(Icons.bolt),
              label: const Text('MOTIVARME'),
            ),

            const SizedBox(height: 25),

            const Divider(),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/disciplines');
              },
              child: const Text('🥊 DISCIPLINAS'),
            ),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/training');
              },
              child: const Text('🏋️ ENTRENAMIENTO'),
            ),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/favorites');
              },
              child: const Text('❤️ FAVORITOS'),
            ),
          ],
        ),
      ),
    );
  }
}