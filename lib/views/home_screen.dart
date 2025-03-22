import 'package:flutter/material.dart';
import 'package:jiakin_app/view_models/jiakin_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late JiakinProvider _jiakinProvider;

  @override
  Widget build(BuildContext context) {
    _jiakinProvider = Provider.of<JiakinProvider>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Anime App',
        ),
        backgroundColor: Theme.of(context).navigationBarTheme.backgroundColor,
      ),
      body: Column(
        children: [
          Card(
            child: Row(
              children: [
                Text('dsds'),
                Text('dsds'),
                Text('dsds'),
                Text('dsds'),
              ],
            ),
          ),
          Card(
            child: Row(
              children: [
                Text('dsds'),
                Text('dsds'),
                Text('dsds'),
                Text('dsds'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
