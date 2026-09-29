import 'package:flutter/material.dart';
import 'navigation/app_routes.dart';
import 'screens/folders_screen.dart';
import 'screens/login_screen.dart';
import 'screens/notes_screen.dart';
import 'screens/pinned_screen.dart';

void main() {
  runApp(const FishShopApp());
}

class FishShopApp extends StatelessWidget {
  const FishShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Notepad',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
      home: const LoginScreen(),
      routes: {
        AppRoutes.login: (_) => const LoginScreen(),
        AppRoutes.notes: (_) => const NotesScreen(),
        AppRoutes.pinned: (_) => const PinnedScreen(),
        AppRoutes.folders: (_) => const FoldersScreen(),
      },
    );
  }
}
