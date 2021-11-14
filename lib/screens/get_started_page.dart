import 'dart:ui';

import 'package:flutter/material.dart';

class GetStratedPage extends StatelessWidget {
  const GetStratedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CircleAvatar(
        backgroundColor: const Color(0xFFF5F6F8),
        child: Column(
          children: [
            const Spacer(),
            Text(
              'Book Tracker',
              style: Theme.of(context).textTheme.headline3,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              ' "Read. Change. Yourself" ',
              style: TextStyle(
                color: Colors.black26,
                fontWeight: FontWeight.bold,
                fontSize: 29,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            TextButton.icon(
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: const Color(0xFF69639F),
                textStyle: const TextStyle(fontSize: 18),
              ),
              onPressed: () {
                print('Went to login');
              },
              icon: const Icon(Icons.login_rounded),
              label: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Sign in to get started'),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
