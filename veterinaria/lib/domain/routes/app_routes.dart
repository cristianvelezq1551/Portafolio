import 'package:flutter/material.dart';
import 'package:veterinaria/domain/helper/resources.dart';
import 'package:veterinaria/presentation/chat/chat_screen.dart';
import 'package:veterinaria/presentation/ecommerce/ecommerce_categories.dart/categories__screen.dart';
import 'package:veterinaria/presentation/ecommerce/ecommerce_initiaalpage/ecommerce_screen.dart';
import 'package:veterinaria/presentation/ecommerce/ecommerce_product.dart/products_screen.dart';
import 'package:veterinaria/presentation/login/login_screen.dart';
import 'package:veterinaria/presentation/map/map_screen.dart';
import 'package:veterinaria/presentation/profile/profile_screen.dart';
import 'package:veterinaria/presentation/testing/testing_screen.dart';

final _controller = PageController();

Map<String, WidgetBuilder> AppRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => SplashScreen(),
    'OnBoardingScreen': (BuildContext context) => OnBoardingScreen(),
    'LoginScreen': (BuildContext context) => LoginScreen(),
    'RegisterScreen': (BuildContext context) => RegisterScreen(),
    'TestingScreen': (BuildContext context) => TestingScreen(),
    'InitialPage': (BuildContext context) => InitialPage(),
    'HomeScreen': (BuildContext context) => HomeScreen(controller: _controller),
    'ChatScreen': (BuildContext context) => ChatScreen(),
    //Ecommerce
    'EcommerceScreen': (BuildContext context) => EcommerceScreen(),
    'CategorieScreen': (BuildContext context) => CategorieScreen(),
    'ProductsScreen': (BuildContext context) => ProductsScreen(),

    'ProfileScreen': (BuildContext context) => ProfileScreen(),
    'MapScreen': (BuildContext context) => MapScreen(),
  };
}
