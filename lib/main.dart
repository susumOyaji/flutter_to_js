import 'package:flutter/material.dart';
import 'package:web_socket_channel/io.dart';
import 'flutterto_js.dart';

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
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Center(
               
              ),
            ),
            Expanded(
              child: Center(
                child: TextButton(
                  child: const Text("fetch"),
                  onPressed: () {
                      var ret =  fetchData;
                      print(ret);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
