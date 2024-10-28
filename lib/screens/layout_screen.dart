import 'package:flutter/material.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Екран Layout\'ів',
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(
          16.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _getPrimaryText(
              'Віджет Column:',
            ),
            Container(
              color: Colors.blue[50],
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.blue,
                    child: const Text(
                      'Елемент 1',
                    ),
                  ),
                  const Divider(),
                  const Text(
                    'Елемент 2',
                  ),
                  const Divider(),
                  const Text(
                    'Елемент 3',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            _getPrimaryText(
              'Віджет Row:',
            ),
            Container(
              color: Colors.green[50],
              padding: const EdgeInsets.all(10),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Елемент A',
                  ),
                  Text(
                    'Елемент B',
                  ),
                  Text(
                    'Елемент C',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            _getPrimaryText(
              'Використання Expanded та Flexible:',
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red,
                    height: 50,
                  ),
                ),
                Flexible(
                  child: Container(
                    color: Colors.blue,
                    height: 50,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.green,
                    height: 50,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            _getPrimaryText(
              'Віджет Stack:',
            ),
            Container(
              color: Colors.grey[200],
              height: 150,
              child: Stack(
                children: [
                  Positioned(
                    left: 10,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.yellow,
                    ),
                  ),
                  Positioned(
                    left: 50,
                    top: 50,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.orange,
                    ),
                  ),
                  Positioned(
                    left: 90,
                    top: 90,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            _getPrimaryText(
              'Padding та SizedBox:',
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text('Текст з Padding у 16 пікселів'),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.blue[100],
              height: 50,
              width: double.infinity,
              child: const Center(
                child: Text(
                  'Test',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getPrimaryText(String text) => Text(
        text,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      );
}
