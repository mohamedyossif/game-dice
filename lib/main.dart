import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_app1/bodyApp.dart';

main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.green[800],
          appBarTheme: AppBarTheme(color: Colors.green)),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dices"),
        ),
        body: BodyApp(),
      ),
    ));
