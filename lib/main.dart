import 'package:flutter/material.dart';

void main() {
  runApp(practice_dice());
}

class practice_dice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Standing UP'),
        ),
        body: Rocky(),
      ),
    );
  }
}

class Rocky extends StatefulWidget {
  @override
  _RockyState createState() => _RockyState();
}

class _RockyState extends State<Rocky> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Container(
            color: Colors.yellow,
            child: Text(
              'I am gonna be the best developer in Flutter',
              style: TextStyle(
                color: Colors.red,
                fontSize: 40,
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Image(
                image: AssetImage('images/Dice/six.png'),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              flex: 2,
              child: Image.asset('images/Dice/one.png'),              ),

          ],
        )
      ],
    );
  }
}
