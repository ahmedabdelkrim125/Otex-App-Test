import 'package:flutter/material.dart';
import 'package:otex_app_test/core/utils/app_dimensions.dart';

void main() {
  runApp(const OtexApp());
}

class OtexApp extends StatelessWidget {
  const OtexApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Otex App Test',
      theme: ThemeData(
        fontFamily: 'Tajawal',
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(
        body: Center(
          child: Text('Otex App Home'),
        ),
      ),
    );
  }
}
