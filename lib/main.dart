import 'package:flutter/material.dart';
import 'package:jiakin_app/view_models/jiakin_provider.dart';
import 'package:jiakin_app/views/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<JiakinProvider>(
          create: (_) => JiakinProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          brightness: Brightness.dark,
          useMaterial3: true,
          navigationBarTheme: NavigationBarThemeData(
            backgroundColor: const Color.fromARGB(255, 147, 40, 33),
          ),
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
