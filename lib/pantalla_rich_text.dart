import 'package:flutter/material.dart';

class PantallaRichText extends StatelessWidget {
  const PantallaRichText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Rich Text')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 300,
            child: Image.asset(
              'assets/death-note.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RichText(
              text: const TextSpan(
                // default style
                style: TextStyle(color: Colors.black, fontSize: 20),
                children: [
                  TextSpan(
                    text: 'Death Note: ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        'This ia a very long caption. RichText is modified version of simple Text widget.',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
