import 'package:flutter/material.dart';
import 'theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});
  static const ColorScheme gymBuddyColorScheme =
      GlobalThemeData.defaultColorScheme;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Main Page',
      theme: ThemeData(
          fontFamily: 'Rethink Sans',
          useMaterial3: true,
          colorScheme: gymBuddyColorScheme),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  static const ColorScheme gymBuddyColorScheme =
      GlobalThemeData.defaultColorScheme;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Rethink Sans',
          useMaterial3: true,
          colorScheme: gymBuddyColorScheme),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Main Page'),
        ),
        body: const Center(
          child: Text('Nyomd meg a gombot új bejegyzéshez!'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Itt történik az új bejegyzés létrehozása
            print('Új bejegyzés létrehozása');
          },
          child: Icon(Icons.add, size: 40), // Plusz jel
          backgroundColor: Colors.red, // Gomb színe
        ),
      ),
    );
  }
}
