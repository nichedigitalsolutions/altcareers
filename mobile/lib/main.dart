import 'package:flutter/material.dart';

void main() {
  runApp(const AltCareersApp());
}

class AltCareersApp extends StatelessWidget {
  const AltCareersApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AltCareers',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<String> categories = const [
    'Technology',
    'Creative Arts',
    'Healthcare',
    'Business',
    'Skilled Trades',
    'Agriculture',
    'Education',
    'Transport',
    'Hospitality',
    'Media',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AltCareers'),
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.work_outline),
            title: Text(categories[index]),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {},
          );
        },
      ),
    );
  }
}