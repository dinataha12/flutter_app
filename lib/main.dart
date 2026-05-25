import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 247, 237, 236),
        body: SafeArea(
            child: Column(
          children: [
            CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("images/PersonalImage.png")),
            Text(
              "Dina Taha Nada",
              style: TextStyle(
                fontFamily: 'LucidaBrightRegular',
                fontSize: 30,
                color: const Color.fromARGB(255, 150, 6, 6),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'flutter developer',
              style: TextStyle(
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
                fontSize: 30,
                

              ),

            ),
            Container(
              color: Colors.blue,
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(Icons.phone, color: Colors.white,),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    '+201033333333',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    ),
                ],
                    
              ),
            ),
            Container(
              color: Colors.blue,
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(Icons.email, color: Colors.white,),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'dinataha@email.com',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    ),
                ],
                    
              ),
            ),
             
          
          ],
        )),
      ),
    );
  }
}
