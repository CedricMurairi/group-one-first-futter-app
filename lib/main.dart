import 'package:flutter/material.dart';
import "dart:math";

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
        primarySwatch: Colors.blueGrey,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(title: 'Group One Assignment'),
        '/second': (context) => const SecondPage(title: "Second Page")
        // '/third': (context) => const ThirdPage(title: "Second Page")
        // '/fourth': (context) => const FourthPage(title: "Second Page")
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black87,
        child: Container(
          color: Colors.black26,
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(
                    minWidth: 50, minHeight: 50, maxHeight: 500, maxWidth: 500),
                child: Transform.rotate(
                  angle: pi / 4,
                  child: Transform.translate(
                    offset: const Offset(100.0, 0.0),
                    child: Container(
                      color: Colors.white,
                      width: 50,
                      height: 50,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                child: Text(
                  "Widgets Implemented: Container, Padding, Transform, ConstrainedBox",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              TextButton(
                style: const ButtonStyle(
                    padding: MaterialStatePropertyAll(
                        EdgeInsets.symmetric(vertical: 30, horizontal: 30))),
                child: const Text("Click to view next widget implementation"),
                onPressed: () => {Navigator.of(context).pushNamed("/second")},
              ),
            ],
          )),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            color: Colors.blueGrey,
            width: 300,
            height: 300,
            child: const FittedBox(
              fit: BoxFit.cover,
              child: Text("Hello"),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 10,
            width: MediaQuery.of(context).size.width,
            child: Container(
              color: Colors.black26,
            ),
          ),
          const RotatedBox(
            quarterTurns: 2,
            child: Text(
              "Bonjour les amis",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: Text(
              "Widgets Implemented: FittedBox, RotatedBox, SizedBox",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.blueGrey, fontWeight: FontWeight.bold),
            ),
          ),
          TextButton(
            style: const ButtonStyle(
                padding: MaterialStatePropertyAll(
                    EdgeInsets.symmetric(vertical: 30, horizontal: 30))),
            child: const Text("Click to view next widget implementation"),
            onPressed: () => {Navigator.of(context).pushNamed("/fourth")},
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class FourthPage extends StatelessWidget {
  const FourthPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          PopupMenuButton(
            onSelected: (value) {
              // your logic
            },
            itemBuilder: (BuildContext bc) {
              return const [
                PopupMenuItem(
                  child: Text("Home"),
                  value: '/home',
                ),
                PopupMenuItem(
                  child: Text("About"),
                  value: '/about',
                ),
                PopupMenuItem(
                  child: Text("Service"),
                  value: '/service',
                ),
                PopupMenuItem(
                  child: Text("Contact"),
                  value: '/contact',
                )
              ];
            },
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            color: Colors.white,
            width: 300,
            height: 300,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
        },
        label: const Text('Add'),
        icon: const Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
    );
  }
}
