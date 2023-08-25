import 'package:drawer_navigation/chat_screen.dart';
import 'package:drawer_navigation/message_screen.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const MyHomePage(title: 'Home Page'),
        '/messages': (context) => const MessageScreen(),
        '/chat': (context) => const ChatScreen()
      },
      title: 'Drawer and Navigation',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      // home: const MyHomePage(title: 'Home Page'),
    );
  }
}


