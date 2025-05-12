import 'package:flutter/material.dart';
import 'package:hymnals/about_page.dart';
import 'package:hymnals/favorites_page.dart';
import 'package:hymnals/home_page.dart';
import 'package:hymnals/songs_page.dart';


class MainTemplate extends StatelessWidget {
  const MainTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainTemplatePage(),
    );
  }
}

class MainTemplatePage extends StatefulWidget {
  const MainTemplatePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MainTemplatePage> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[

    Center(
      child: HomePage()
    ),

    Center(
      child: FavoritesPage()
    ),

    Center(
      child: SongsPage()
    ),

    Center(
      child: AboutPage()
      ),

  ];
  String _appBarTitle = 'Home';

  void _onSelectItem(int index, String newTitle) {
    Navigator.pop(context);
    setState(() {       _appBarTitle = newTitle;
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    final selectedNavMenu = Colors.amber;
    final selectedNavMenuBG = Colors.green.shade100;

    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitle),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[

            SizedBox(
              height: 100,
              child: DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue), //Background of Drawer Header
              child: Text(
                "Metropolitan Bible Baptist\nHymns", 
                style: TextStyle(
                  color: Colors.white, 
                  fontSize: 22
                )
              ),
              ),
            ),

            ListTile(
              leading: Icon(Icons.home_rounded, 
                color: _selectedIndex == 0 ? selectedNavMenu : null
              ),
              title: Text(
                'Home',
                style: TextStyle(
                  color: _selectedIndex == 0 ? selectedNavMenu : null,
                  fontWeight: _selectedIndex == 0 ? FontWeight.bold : FontWeight.normal,
                ),
              ),
              selected: _selectedIndex == 0,
              selectedTileColor: selectedNavMenuBG,
              onTap: () => _onSelectItem(0, "Home"),
            ),

            ListTile(
              leading: Icon(Icons.star_rounded, 
                color: _selectedIndex == 1 ? selectedNavMenu : null
              ),
              title: Text(
                'Favorites',
                style: TextStyle(
                  color: _selectedIndex == 1 ? selectedNavMenu : null,
                  fontWeight: _selectedIndex == 1 ? FontWeight.bold : FontWeight.normal,
                ),
              ),
              selected: _selectedIndex == 1,
              selectedTileColor: selectedNavMenuBG,
              onTap: () => _onSelectItem(1, "Favorites"),
            ),

            ListTile(
              leading: Icon(Icons.my_library_music_rounded, 
                color: _selectedIndex == 2 ? selectedNavMenu : null
              ),
              title: Text(
                'Spiritual Songs',
                style: TextStyle(
                  color: _selectedIndex == 2 ? selectedNavMenu : null,
                  fontWeight: _selectedIndex == 2 ? FontWeight.bold : FontWeight.normal,
                ),
              ),
              selected: _selectedIndex == 2,
              selectedTileColor: selectedNavMenuBG,
              onTap: () => _onSelectItem(2,"Spiritual Songs"),
            ),

            ListTile(
              leading: Icon(Icons.info_rounded, 
                color: _selectedIndex == 3 ? selectedNavMenu : null
              ),
              title: Text(
                'About',
                style: TextStyle(
                  color: _selectedIndex == 3 ? selectedNavMenu : null,
                  fontWeight: _selectedIndex == 3 ? FontWeight.bold : FontWeight.normal,
                ),
              ),
              selected: _selectedIndex == 3,
              selectedTileColor: selectedNavMenuBG,
              onTap: () => _onSelectItem(3,"About"),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}