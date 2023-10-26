import 'package:flutter/material.dart';
import 'package:jogajug/constants/variables.dart';
import 'package:jogajug/provider/user_provider.dart';
import 'package:jogajug/router.dart';
import 'package:provider/provider.dart';

import 'Pages/home/screens/HomePage.dart';

void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>UserProvider())
      ],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jogajug',
      theme: ThemeData(
        scaffoldBackgroundColor: Variables.backgroundColor,
        colorScheme: const ColorScheme.light(primary: Variables.backgroundColor),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(color: Variables.iconColor),
        ),
      ),
      onGenerateRoute: (settings)=> generateRoute(settings),
      home:  const HomePage(),
    );
  }
}
