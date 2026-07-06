import 'package:flutter/material.dart';

class AppRouter {
  static Widget get home => const Scaffold(
        body: Center(
          child: Text(
            'Welcome to AltCareers',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
}