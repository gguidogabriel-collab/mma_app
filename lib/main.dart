import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MMAApp());
}

class MMAApp extends StatelessWidget {
  const MMAApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MMA Fighter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.red,
          brightness: Brightness.dark,
        ),
        textTheme: GoogleFonts.robotoTextTheme(
          ThemeData.dark().textTheme,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String mensaje = 'Entrena duro. Nunca te rindas.';

  void mostrarMensaje() {
    setState(() {
      mensaje = '¡El entrenamiento empieza ahora! 🥊';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'MMA FIGHTER',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.red.shade900,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: Colors.red.shade900,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Column(
                  children: [
                    Icon(
                      Icons.sports_mma,
                      size: 90,
                      color: Colors.white,
                    ),
                    SizedBox(height: 15),
                    Text(
                      'MIXED MARTIAL ARTS',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Fuerza • Disciplina • Técnica',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 17),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '¿Qué es el MMA?',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Las artes marciales mixtas combinan diferentes '
                        'disciplinas de combate como boxeo, kickboxing, '
                        'lucha y jiu-jitsu brasileño.',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
  onTap: () {
    setState(() {
      mensaje = '¡Striking: técnica, velocidad y precisión! 🥊';
    });
  },
  child: Column(
    children: [
      Icon(Icons.sports_mma, size: 40),
      SizedBox(height: 5),
      Text('Striking'),
    ],
  ),
),

GestureDetector(
  onTap: () {
    setState(() {
      mensaje = '¡Fuerza: construye potencia y disciplina! 💪';
    });
  },
  child: Column(
    children: [
      Icon(Icons.fitness_center, size: 40),
      SizedBox(height: 5),
      Text('Fuerza'),
    ],
  ),
),

GestureDetector(
  onTap: () {
    setState(() {
      mensaje = '¡Cardio: resistencia para nunca rendirte! 🏃';
    });
  },
  child: Column(
    children: [
      Icon(Icons.directions_run, size: 40),
      SizedBox(height: 5),
      Text('Cardio'),
    ],
  ),
),
                ],
              ),

              const SizedBox(height: 25),

              Text(
                mensaje,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              ElevatedButton.icon(
                onPressed: mostrarMensaje,
                icon: const Icon(Icons.flash_on),
                label: const Text('MOTIVARME'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade800,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}