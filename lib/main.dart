import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/setting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentPages = 0;

  final List<Widget> pages = [
    const Home(),
    const Setting(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('MarketPlace'),
        ),
        body: SafeArea(child: Stack(
          children: [
            pages[currentPages],
          ],
        )),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.amber,
          currentIndex: currentPages,
          onTap: (int indexPages) {
            setState(() {
              currentPages = indexPages;
            });
          },
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting')
              BottomNavigationBarItem(icon: Icon(Icons.Account), label: 'Account')
            ]),
      ),
    );
  }
}
