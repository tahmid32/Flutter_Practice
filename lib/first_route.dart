import 'package:flutter/material.dart';
import 'second_route.dart';
import 'final_route.dart';

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
        backgroundColor: Colors.red[900],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text('Open Route'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondRoute()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    horizontal: 40.0, vertical: 15.0),
                textStyle: const TextStyle(
                    fontSize: 15.0, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FinalRoute()),
                );
              },
              child: const Text('Directly to Final Screen'),
              style: ElevatedButton.styleFrom(
                primary: Colors.red[900],
                padding: const EdgeInsets.symmetric(
                    horizontal: 40.0, vertical: 15.0),
                textStyle: const TextStyle(
                    fontSize: 15.0, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
