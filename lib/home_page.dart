import 'package:flutter/material.dart';
import 'package:hymnals/favorites_page.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      drawer: Drawer(
      
        child: ListView(
          children: [

            SizedBox(
              height: 100,
              child: DrawerHeader(
                child: Text(
                  "Metropolitan Bible Baptist\nHymns", 
                  style: TextStyle(

                  )
                )
              ),
            ),

            ListTile(
              title: Row(
                children: [
                  Icon(Icons.home_rounded, 
                    size: 33,),
                  SizedBox(width: 15),
                  Text("Home")
                ],
              ),
              onTap: () {}
            ),
            
            ListTile(
              title: Row(
                children: [
                  Icon(Icons.star_rounded, 
                    size: 33,),
                  SizedBox(width: 15),
                  Text("Favorites")
                ],
              ),
              onTap: () {Navigator.push(context,  MaterialPageRoute(builder: (context) => FavoritesPage()),);}
            ),

            ListTile(
              title: Row(
                children: [
                  Icon(Icons.my_library_music_rounded, 
                    size: 33,),
                  SizedBox(width: 15),
                  Text("Spiritual Songs")
                ],
              ),
              onTap: () {}
            ),

            ListTile(
              title: Row(
                children: [
                  Icon(Icons.info_rounded, 
                    size: 33,),
                  SizedBox(width: 15),
                  Text("About")
                ],
              ),
              onTap: () {}
            ),



          ],
        ),
      ),
      body: Center(
        child: Text("Loading..."),
      ),
    );
  }
}