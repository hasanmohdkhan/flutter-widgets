import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ),
  );
}

class Home extends StatelessWidget {
  final String src =
      'https://images.unsplash.com/photo-1585569036452-97c3e660c224?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.lime[400],
        elevation: 0.0,
        title: Center(
          child: Text(
            'Fonts',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 2.0,
              fontFamily: 'Pacifico',
            ),
          ),
        ),
        backgroundColor: Colors.green[400],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Hello from flutter',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[400],
                    letterSpacing: 2.0,
                    fontFamily: 'Pacifico',
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(child: Image.network(src), flex: 1),
                    Expanded(child: Image.asset('images/photo.jpg'), flex: 1),
                    Expanded(child: Image.asset('images/photo-2.jpg'), flex: 1),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                RaisedButton.icon(
                  onPressed: () {
                    print('RaisedButton Clicked');
                  },
                  label:
                      Text('RaisedButton', style: TextStyle(color: Colors.white)),
                  color: Colors.pink[400],
                  icon: Icon(Icons.add_outlined, color: Colors.white),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      print('FlatButton Clicked');
                    },
                    child: Text(
                      'FlatButton',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.lime,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    print('Icon Button pressed!');
                  },
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.pink,
                    size: 48.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('i was clicked');
          },
          tooltip: 'FAB',
          backgroundColor: Colors.white,
          child: Icon(
            Icons.favorite,
            color: Colors.pink,
            size: 24.0,
            semanticLabel: 'Text to announce in accessibility modes',
          )),
    );
  }
}
