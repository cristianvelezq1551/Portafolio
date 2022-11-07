import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:veterinaria/domain/routes/app_routes.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Biko',
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: AppRoutes(),
    );
  }
}
