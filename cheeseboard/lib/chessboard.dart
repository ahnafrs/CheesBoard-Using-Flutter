import 'package:flutter/material.dart';

class ChessBoard extends StatelessWidget {
  const ChessBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          'Chess Board',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        color: Colors.brown,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 8,
          ),
          itemCount: 64,
          itemBuilder: (BuildContext context, int index) {
            final row = index ~/ 8;
            final column = index % 8;
            final isWhite = (row + column) % 2 == 0;

            final color = isWhite ? Colors.white : Colors.black;

            return Container(
              color: color,
            );
          },
        ),
      ),
    );
  }
}
