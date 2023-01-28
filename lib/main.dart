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
      title: 'Group One Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(title: 'Group One Assignment'),
        '/second': (context) => const SecondPage(title: "Second Page"),
        '/third': (context) => const ThirdPage(title: "Third Page"),
        '/fourth': (context) => const FourthPage(title: "Fourth Page"),
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
            onPressed: () => {Navigator.of(context).pushNamed("/third")},
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class ThirdPage extends StatefulWidget {
  final String title;

  const ThirdPage({required this.title, Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  String _title = "";

  final List<String> images = [
    "gary_meme.jpeg",
    "the_one_commandment.jpeg",
    "ultimate_meme.jpeg"
  ];

  final List<String> names = [
    'Garry\'s Best Meme',
    'The One Commandment',
    'Juniors Hit Again',
  ];

  int targetImage = 0;

  void goBack() {
    targetImage > 0
        ? setState(() {
            targetImage--;
          })
        : null;
  }

  void goForth() {
    targetImage < images.length - 1
        ? setState(() {
            targetImage++;
          })
        : null;
  }

  @override
  void initState() {
    _title = widget.title;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    void like() {
      setState(() {
        isChecked = !isChecked;
      });
    }

    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(_title),
      ),
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  color: Colors.black,
                  onPressed: goBack,
                  icon: Icon(
                    Icons.arrow_back_ios_rounded,
                    color: isChecked ? Colors.red : Colors.blueGrey,
                  ),
                ),
                Chip(
                  label: Text(names[targetImage]),
                ),
                IconButton(
                  color: Colors.black,
                  onPressed: goForth,
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: isChecked ? Colors.red : Colors.blueGrey,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 350,
              height: 350,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Image.asset(images[targetImage]),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                "Widgets Implemented: Icon, Image, Chip",
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
        ),
      ),
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
            icon: const Icon(Icons.menu),
            iconSize: 40,
            onSelected: (value) {
              Navigator.of(context).pushNamed(value);
            },
            itemBuilder: (BuildContext bc) {
              return const [
                PopupMenuItem(
                  value: '/',
                  child: Text("Home Page"),
                ),
                PopupMenuItem(
                  value: '/second',
                  child: Text("Second Page"),
                ),
                PopupMenuItem(
                  value: '/third',
                  child: Text("Third Page"),
                ),
              ];
            },
          )
        ],
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                "Nothing to see here\n\nUse the menu to navigate back to other screens",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 40.0),
              child: Text(
                "Widgets Implemented: Menu Items, Floating Action Button",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.blueGrey, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
        },
        label: const Text('Add'),
        icon: const Icon(Icons.add),
      ),
    );
  }
}
