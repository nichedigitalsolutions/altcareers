import 'package:flutter/material.dart';

import 'router.dart';
import 'theme.dart';

class AltCareersApp extends StatelessWidget {
  const AltCareersApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AltCareers',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: AppRouter.home,
    );
  }
}