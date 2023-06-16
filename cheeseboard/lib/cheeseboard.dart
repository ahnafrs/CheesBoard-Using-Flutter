import 'package:flutter/material.dart';

class ChessBoardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Chess Board'),
        ),
        body: ChessBoard(),
      ),
    );
  }
}

class ChessBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 64,
      itemBuilder: (BuildContext context, int index) {
        final row = index ~/ 8; // Calculate row based on the index
        final column = index % 8; // Calculate column based on the index

        // Determine the color of the chessboard square
        final color = (row + column) % 2 == 0 ? Colors.white : Colors.black;

        return Container(
          color: color,
          child: Center(
            child: Text(
              '[$row, $column]',
              style: TextStyle(color: Colors.red),
            ),
          ),
        );
      },
    );
  }
}
