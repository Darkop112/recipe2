import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TextTheme Check'),
        ),
        body: const TextThemeCheck(),
      ),
    );
  }
}

class TextThemeCheck extends StatelessWidget {
  const TextThemeCheck({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ListView(
      children: [
        Text('Headline:',
            style: textTheme.displayLarge ??
                const TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
        Text('BodyText1:',
            style: textTheme.bodyLarge ?? const TextStyle(fontSize: 16)),
        Text('BodyText2:',
            style: textTheme.bodyMedium ?? const TextStyle(fontSize: 14)),
        Text('Subtitle1:',
            style: textTheme.titleMedium ?? const TextStyle(fontSize: 18)),
      ],
    );
  }
}
