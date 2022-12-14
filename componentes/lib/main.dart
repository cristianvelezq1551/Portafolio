import 'package:components/src/pages/alert_page.dart';
import 'package:components/src/pages/card_page.dart';
import 'package:components/src/pages/home_temp.dart';
import 'package:components/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', 'US'), // English, no country code
        Locale('es', 'ES'), // Spanish, no country code
      ],

      title: 'Componentes APP',
      // home: HomePage()
      initialRoute: '/',
      routes: getAplicationRoutes(),
      // onGenerateRoute: (RouteSettings setting) {
      //   print('ruta llamada: ${setting.name}');

      //   return MaterialPageRoute(builder: (BuildContext context) => CardPage());
      // },
    );
  }
}
