import 'package:flutter/material.dart';

void main() {
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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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
  int _counter = 0;
  String _type = "偶数";

  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter % 2 == 0) {
        _type = "偶数";
      } else {
        _type = "奇数";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Row(
        children: [
          Icon(Icons.home),
          Text("ホーム"),
        ],
      )),
      body: Column(
        children: [
          const Text("Hello World!"),
          const Text("Hello World!"),
          TextButton(
            onPressed: () => {print("ボタンが押されたよ")},
            child: const Text("テキストボタン"),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.favorite,
                color: Colors.pink,
                size: 24.0,
              ),
              Icon(
                Icons.audiotrack,
                color: Colors.green,
                size: 30.0,
              ),
              Icon(
                Icons.beach_access,
                color: Colors.blue,
                size: 36.0,
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text('$_counter'),
              if (_counter % 2 == 0)
                Text('$_type',
                    style: TextStyle(fontSize: 20, color: Colors.blue))
              else
                Text('$_type',
                    style: TextStyle(fontSize: 20, color: Colors.red))
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      drawer: const Drawer(
        child: Center(
          child: Text("Drawer"),
        ),
      ),
      endDrawer: const Drawer(
        child: Center(
          child: Text("End Drawer"),
        ),
      ),
    );
  }
}
