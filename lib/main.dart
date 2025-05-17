import 'package:flutter/material.dart';
import 'package:hymnals/about_page.dart';
import 'package:hymnals/favorites_page.dart';
import 'package:hymnals/home_page.dart';
import 'package:hymnals/loading_page.dart';
import 'package:hymnals/main_template.dart';
import 'package:hymnals/songs_detail_page.dart';
import 'package:hymnals/songs_page.dart';


void main() {
  runApp(HymnsApp());
}

class HymnsApp extends StatelessWidget {
  const HymnsApp({super.key});
  
  get index => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'loading_in_page',
      routes: {
        'loading_in_page': (context) => LoadingPage(),
        'main_template': (context) => MainTemplate(),
        'home_page': (context) => HomePage(),
        'favorites_page': (context) => FavoritesPage(),
        'songs_page': (context) => SongsPage(),
        'placeholder': (context) => SongsDetailPage(index: index),
        'about_page': (context) => AboutPage()
      },
    );
  }
}