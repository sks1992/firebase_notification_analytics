import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flirebase_push_notification/screen_second.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Screen"),
      ),
      body: Center(
        child: Column(
          children: [
           const Text("First Screen"),
            ElevatedButton(
              onPressed: () async {
                await FirebaseAnalytics.instance
                    .logEvent(name: 'go_to_second_screen');

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const SecondScreen(),
                  ),
                );
              },
              child: const Text("Go to  Second Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
