import 'package:flutter/material.dart';



class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});
 
  @override
  Widget build(BuildContext context) {
  Future.delayed(Duration(seconds: 4),() {
    Navigator.pushReplacementNamed(context, 'home_page');
  });


    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey[600],
              child: Icon(
                Icons.music_note_rounded, 
                size: 50, 
                ),
            ),
            
            SizedBox(height: 100),
  
            SizedBox(
              height: 60,
              width: 60,
              child: CircularProgressIndicator(
                strokeWidth: 6, 
                year2023: false,)
            )
          ],
        ),
      ),
    );
  }
}