import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Anime App',
        ),
        backgroundColor: Theme.of(context).navigationBarTheme.backgroundColor,
      ),
      body: Column(
        children: [
          Text('data'),
        ],
      ),
    );
  }
}
