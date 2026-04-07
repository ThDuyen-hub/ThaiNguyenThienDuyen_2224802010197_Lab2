import 'package:flutter/material.dart';
import 'part1.dart';
import 'part2.dart';
import 'part3.dart';
import 'part4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab 2 App',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/layout': (context) => const LayoutScreen(),
        '/responsive': (context) => const ResponsiveScreen(),
        '/navigation': (context) => const NavigationScreen(),
        '/form': (context) => const FormScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lab 2 Menu")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/layout'),
              child: const Text("Layout Widgets"),
            ),

            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/responsive'),
              child: const Text("Responsive"),
            ),

            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/navigation'),
              child: const Text("Navigation"),
            ),

            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/form'),
              child: const Text("Form"),
            ),
          ],
        ),
      ),
    );
  }
}