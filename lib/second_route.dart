import 'package:flutter/material.dart';
import 'first_route.dart';
import 'final_route.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
        backgroundColor: Colors.orange[900],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FinalRoute()),
                );
              },
              child: const Text('To Final Screen!'),
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
                //Navigator.pop(context);
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const FirstRoute()),
                  (Route<dynamic> route) => false,
                );
              },
              child: const Text('Go back!'),
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
