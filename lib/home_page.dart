import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFD9D9D9),
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: Colors.black,width: 2)
                ),
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.all(35),

                child: Column(
                    children: [
                      Text("Speaking to yourselves in Psalms and hymns and spiritual songs, "
                        "singing\n and making melody in your heart to the Lord.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                          leadingDistribution: TextLeadingDistribution.even,
                          fontWeight: FontWeight.w600
                        ),
                      ),

                      SizedBox(height: 10),

                      Align(
                        alignment: Alignment.centerRight,
                        child: Text("Ephesians 5: 19",
                          style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800
                        ),),
                      )
                    ],
                  ),
                )
          ],),
      
    );
  }
}