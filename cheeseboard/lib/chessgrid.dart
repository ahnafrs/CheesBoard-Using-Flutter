import 'package:flutter/material.dart';

class ChessBoardList extends StatelessWidget {
  const ChessBoardList({Key? key}) : super(key: key);

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
        child: ListView.builder(
          itemCount: 8,
          itemBuilder: (BuildContext context, int rowIndex) {
            return Row(
              children: List.generate(8, (int columnIndex) {
                final totalIndex = rowIndex * 8 + columnIndex;
                final isWhite = (rowIndex + columnIndex) % 2 == 0;
                final color = isWhite ? Colors.white : Colors.black;

                return Container(
                  color: color,
                  height: 50,
                  width: 50,
                );
              }),
            );
          },
        ),
      ),
    );
  }
}
