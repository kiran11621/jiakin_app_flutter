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

  Future<void> apiCall() async {
    await _jiakinProvider.fetchJiakin();
  }

  @override
  void initState() {
    super.initState();

    _jiakinProvider = Provider.of(context, listen: false);

    apiCall();
  }

  @override
  Widget build(BuildContext context) {
    _jiakinProvider = Provider.of<JiakinProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Anime App',
        ),
        backgroundColor: Theme.of(context).navigationBarTheme.backgroundColor,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            child: SizedBox(
              height: 170,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.network(_jiakinProvider
                            .response?.data?[index].images?['webp']?.imageUrl ??
                        "-"),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              _jiakinProvider.response?.data?[index].title ??
                                  "--",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Type: ${_jiakinProvider.response?.data?[index].type?.name ?? "--"}",
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Episodes: ${_jiakinProvider.response?.data?[index].episodes ?? "--"}",
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Duration: ${_jiakinProvider.response?.data?[index].duration ?? "--"}",
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Synopsis: ${_jiakinProvider.response?.data?[index].synopsis ?? "--"}",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),

      // Column(
      //   children: [
      //
      //     Card(
      //       child: Row(
      //         children: [
      //           Image.network(_jiakinProvider
      //                   .response?.data?[1].images?['webp']?.imageUrl ??
      //               "-"),
      //           Text('dsds'),
      //           Text('dsds'),
      //           Text('dsds'),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
