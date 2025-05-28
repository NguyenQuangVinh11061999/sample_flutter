import 'package:flutter/material.dart';

import 'home_page.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      debugShowCheckedModeBanner: false,
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
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(30),
                  child: Text(
                    "NFT",
                    style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
                  ),
                ),
                _customImage(),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 10),
                  child: Text(
                    "Find, Collect and Sell \n Amazing NFTs",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Text(
                  "Explore the best collection’s of NFTs and buy and \n sell your NFTs as well",
                  textAlign: TextAlign.center,
                  selectionColor: Colors.amber,
                  style: TextStyle(
                    fontSize: 10,
                    fontFamily: 'Times New Roman',
                    wordSpacing: 2, // khoang cach chu
                    letterSpacing: 2, // khoang cach ky tu
                    decoration: TextDecoration.lineThrough, // kieu chu gach
                  ),
                ),

                Container(
                  margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/facebook.png',
                        width: 50,
                        height: 50,
                      ),
                      Image.asset(
                        'assets/images/google.png',
                        width: 50,
                        height: 50,
                      ),
                    ],
                  ),
                ),
                _customButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

_customButton(BuildContext context) {
  // InWell
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (builder) {
            return ScreenHomePage();
          },
        ),
      );
    },
    child: Container(
      width: 200,
      height: 50,
      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
      decoration: BoxDecoration(
        color: Colors.black,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Get Started",
            style: TextStyle(fontSize: 13, color: Colors.white),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
            child: Image.asset('assets/images/next.png'),
          ),
        ],
      ),
    ),
  );
}

_customImage() {
  return Container(
    decoration: BoxDecoration(
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    child: Image.asset('assets/images/image1.png'),
  );
}
