import 'package:flutter/material.dart';
import 'package:haermes_flutter/screens/configuration.dart';
import 'package:haermes_flutter/screens/home.dart';
import 'package:haermes_flutter/screens/login.dart';
import 'package:haermes_flutter/screens/splash.dart';

void main(List<String> args) {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Haermes Flutter',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.deepOrange,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: const Splash(),
      routes: <String, WidgetBuilder>{
        'Splash': (BuildContext context) => const Splash(),
        'Login': (BuildContext context) => const Login(),
        'Configuration': (BuildContext context) => const Configuration(),
        'Home': (BuildContext context) => const Home(),
      },
    );
  }
}
