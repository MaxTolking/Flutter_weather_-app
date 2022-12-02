import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vanilla demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _rating = 0;

  @override
  Widget build(BuildContext context) {
    double _size = 60;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Vanilla demo'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: IconButton(
                icon: (_rating >= 1
                    ? Icon(
                        Icons.star,
                        size: _size,
                      )
                    : Icon(
                        Icons.star_border,
                        size: _size,
                      )),
                color: Colors.indigo[500],
                iconSize: _size,
                onPressed: () {
                  setState(() {
                    _rating = 1;
                  });
                },
              ),
            ),
            Container(
              child: IconButton(
                icon: (_rating >= 2
                    ? Icon(
                        Icons.star,
                        size: _size,
                      )
                    : Icon(
                        Icons.star_border,
                        size: _size,
                      )),
                color: Colors.indigo[500],
                iconSize: _size,
                onPressed: () {
                  setState(() {
                    _rating = 2;
                  });
                },
              ),
            ),
            Container(
              child: IconButton(
                icon: (_rating >= 3
                    ? Icon(
                        Icons.star,
                        size: _size,
                      )
                    : Icon(
                        Icons.star_border,
                        size: _size,
                      )),
                color: Colors.indigo[500],
                iconSize: _size,
                onPressed: () {
                  setState(() {
                    _rating = 3;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
