import 'package:flutter/material.dart';
import '/pages3/first_page.dart';

class PantallaStatefulWidget extends StatefulWidget {
  final int number;
  const PantallaStatefulWidget(
      {Key? key, required this.number}) // Corregido aquí también
      : super(key: key);

  @override
  _PantallaStatefulWidgetState createState() {
    // Y aquí
    print('Number: $number CreateState');
    return _PantallaStatefulWidgetState(); // Y aquí
  }
}

class _PantallaStatefulWidgetState extends State<PantallaStatefulWidget> {
  // Y aquí
  int number = 0;

  @override
  void initState() {
    super.initState();
    number = widget.number;
    print('Number: ${widget.number} InitState');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('Number: ${widget.number} DidChangeDependencies');
  }

  @override
  void didUpdateWidget(PantallaStatefulWidget oldWidget) {
    // Y aquí
    super.didUpdateWidget(oldWidget);
    print('Number: ${widget.number} DidUpdateWidget');

    if (oldWidget.number != widget.number) {
      print('Number has changed');
    }
  }

  @override
  void deactivate() {
    print('Number: ${widget.number} Deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    print('Number: ${widget.number} Dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('Number: $number Build');
    return Scaffold(
      appBar: AppBar(title: const Text('Stateful Widget')),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 500,
              width: 350,
              child: TextButton(
                child: Text(
                  number.toString(),
                  style: const TextStyle(fontSize: 80),
                ),
                onPressed: () {
                  setState(() {
                    print('Number: ${widget.number} SetState');
                    number++;
                  });
                },
              ),
            ),
            ElevatedButton(
              child: const Text('First Page'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FirstPage(numberFirst: number)),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
