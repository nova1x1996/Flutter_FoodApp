import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_app/categories_page.dart';
import 'package:my_app/item_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/ItemPage': (context) => ItemPage(),
        '/CategoriesPage': (context) => CategoriesPage(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(bodyText1: TextStyle(fontFamily: 'Lobster')),
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Categories Food"),
        centerTitle: true,
        backgroundColor: Colors.green[400],
      ),
      body: CategoriesPage(),
    );
  }
}
