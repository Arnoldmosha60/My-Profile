import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage("images/mosha.png"),
              radius: 50.0,
            ),
            const Text(
              "Arnold Mosha",
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 2.5,
              ),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                fontFamily: 'SourceSans3-VariableFont_wght',
                fontSize: 20.0,
                color: Colors.teal[100],
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal[100],
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: const Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: Text(
                  "+255 784 399 510",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'SourceSans3-VariableFont_wght',
                    color: Colors.teal[900],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: const Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                title: Text(
                  'arnoldmosha60@gmail.com',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'SourceSans3-VariableFont_wght',
                    color: Colors.teal[900],
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: const Icon(
                  Icons.location_on,
                  color: Colors.teal,
                ),
                title: Text(
                  'kimara, dar-es-salaam',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'SourceSans3-VariableFont_wght',
                    color: Colors.teal[900],
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
