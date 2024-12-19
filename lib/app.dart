import 'package:flutter/material.dart';
import 'pages/home_page.dart';

class RepaintBoundaryExamples extends StatelessWidget {
  const RepaintBoundaryExamples({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Repaint Boundary Examples',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          useMaterial3: true,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.black,
            centerTitle: true,
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        home: const HomePage(),
      );
}
