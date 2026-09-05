import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'providers/favorites_provider.dart';
import 'screens/home_screen.dart';
import 'screens/disciplines_screen.dart';
import 'screens/training_screen.dart';
import 'screens/favorites_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => FavoritesProvider(),
      child: const MMAApp(),
    ),
  );
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
      home: const HomeScreen(),
      routes: {
        '/disciplines': (context) => const DisciplinesScreen(),
        '/training': (context) => const TrainingScreen(),
        '/favorites': (context) => const FavoritesScreen(),
      },
    );
  }
}