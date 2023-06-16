import 'package:cheeseboard/chessgrid.dart';
import 'package:flutter/material.dart';

import 'chessboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chess Board',
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: ChessBoardList(),
    );
  }
}
