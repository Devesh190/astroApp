import 'package:astroapp/feature/home/provider/home_provider.dart';
import 'package:astroapp/feature/home/screen/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'feature/home/provider/bottom_nav_provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => BottomNavProvider()),
      ChangeNotifierProvider(create: (_) => HomeProvider())
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'astroApp',
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}
