import 'package:flutter/material.dart';

class NewTrackingPage extends StatelessWidget {
  const NewTrackingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Tracking Number'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Enter a new tracking number',
            ),
          ],
        ),
      ),
    );
  }
}
