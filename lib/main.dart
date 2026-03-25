import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_store/core/theme/theme_provider.dart';

import 'package:flutter_store/core/theme/app_theme.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currenTheme = ref.watch(themeProvider);

    return MaterialApp(
      theme: UAppTheme.lightTheme,
      darkTheme: UAppTheme.darkTheme,
      themeMode: currenTheme,
      home: const TestScreen(),
    );
  }
}

class TestScreen extends ConsumerWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // ref.read() EJECUTA una acción una sola vez (como presionar un botón).
            // Usamos .notifier para acceder a los métodos (como toggleTheme).
            ref.read(themeProvider.notifier).toggleTheme();
          },
          child: const Text('Cambiar Tema Visual'),
        ),
      ),
    );
  }
}
