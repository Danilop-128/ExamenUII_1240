import 'package:flutter/material.dart';

class PantallaDraggable extends StatefulWidget {
  const PantallaDraggable({Key? key}) : super(key: key);

  @override
  State<PantallaDraggable> createState() => _PantallaDraggableState();
}

class _PantallaDraggableState extends State<PantallaDraggable> {
  Color color = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Draggable')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            DragTarget<Color>(
              onAccept: (data) => setState(() => color = data),
              builder: (context, _, __) => Container(
                color: color,
                width: 200,
                height: 200,
              ),
            ),
            Draggable<Color>(
              data: Colors.green,
              child: Container(
                color: Colors.green,
                width: 200,
                height: 200,
              ),
              feedback: Container(
                color: Colors.orange,
                width: 200,
                height: 200,
              ),
              childWhenDragging: Container(
                color: Colors.red,
                width: 200,
                height: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
