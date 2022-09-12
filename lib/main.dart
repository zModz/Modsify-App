import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modsify'),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            color: Colors.amber,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(5),
                  alignment: Alignment.centerLeft,
                  child: const Text("Welcome Back!"),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Container(
                        color: Colors.cyan,
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.all(5),
                        child: const Text('Album 1'),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        color: Colors.cyan,
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.all(5),
                        child: const Text('Album 2'),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.cyan,
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.all(5),
                        child: const Text('Album 3'),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.cyan,
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.all(5),
                        child: const Text('Album 4'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.music_note_list),
            label: 'Library',
          ),
        ],
      ),
    );
  }
}
