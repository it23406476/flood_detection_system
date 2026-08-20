import 'package:flutter/material.dart';

class MockDataPanel extends StatelessWidget {
  const MockDataPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Mock Data Panel',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text('Use this temporarily before hardware is integrated.'),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Next step: connect this to Firebase writes'),
                  ),
                );
              },
              child: const Text('Inject Mock Reading'),
            )
          ],
        ),
      ),
    );
  }
}