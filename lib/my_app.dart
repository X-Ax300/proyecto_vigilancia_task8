import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/incidence_provider.dart';
import 'screens/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => IncidenceProvider()),
      ],
      child: MaterialApp(
        title: 'App de Vigilancia',
        theme: ThemeData(
          colorScheme: ColorScheme.dark(
            primary: Colors.tealAccent,
            secondary: Colors.cyan,
            background: Colors.black,
          ),
          scaffoldBackgroundColor: Colors.black,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.black,
            elevation: 0,
          ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.tealAccent,
          ),
          cardTheme: CardTheme(
            color: Colors.grey[900],
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          textTheme: TextTheme(
            bodyLarge: TextStyle(color: Colors.white),
            bodyMedium: TextStyle(color: Colors.white70),
          ),
        ),
        home: const HomePage(),
      ),
    );
  }
}
