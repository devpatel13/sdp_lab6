import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
// home is property and after : is its value widget.
// Scaffold is widgets built in flutter sdk..Scaffold is one type of
      // layout manager..
      home: HomeScreen(),
    ));

// making your own custom stateless widget....
// used in Hot reload and also useful in reuse...DRY feature
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

// const test1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'HELLO FLUTTER...MY FIRST APP',
        ),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: Text(
          'HELLO DDU',
          style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.grey[600],
              fontFamily: 'Aboreto'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red[600],
        child: const Text('Click'),
        onPressed: () {}, // must required property...
// making change at here to test hot reloading..click --> click
        // me---> Click and ctrl + s
      ),
    );
  }
}
