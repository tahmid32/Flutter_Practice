import 'package:flutter/material.dart';
import 'first_route.dart';
import 'second_route.dart';

class FinalRoute extends StatelessWidget {
  const FinalRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Final Screen'),
        backgroundColor: Colors.brown[700],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text('Return to First Screen'),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const FirstRoute()),
                  (Route<dynamic> route) => false,
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
              child: const Text('Go back!'),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondRoute()),
                  );
              },
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
