// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_dialpad/flutter_dialpad.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  void openPhone(String phone) async {
    Uri phoneno = Uri.parse('tel:$phone');
    if(await canLaunchUrl(phoneno)){
      await launchUrl(phoneno);
    }else {
      if (kDebugMode) {
        print('Cannot make call');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    String email;
    String subject;
    String body;
    Uri mail;
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
            TextButton(
              onPressed: () async => {
                openPhone('0784399510'),
              },
              child: Card(
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
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
            ),
            TextButton(
              onPressed: () async => {
                email = Uri.encodeComponent("arnoldmosha60@gmail.com"),
                subject = Uri.encodeComponent("Hello Mosha"),
                body = Uri.encodeComponent("Hi! I'm Flutter Developer"),
                mail = Uri.parse("mailto:$email?subject=$subject&body=$body"),
                if (await launchUrl(mail)) {
                  //email app opened
                }else{
                  //email app is not opened
                }
              },
              child: Card(
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
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
            ),
            TextButton(
              onPressed: () {
                // LocationService();
              },
              child: Card(
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
            ),
          ],
        )),
      ),
    );
  }
}

// class LocationService {
//   Location location = Location();
//
//   Future<bool> requestPermission() async {
//     final permission = await location.requestPermission();
//     return permission == PermissionStatus.granted;
//   }
//
//   Future<LocationData> getCurrentLocation() async {
//     final serviceEnabled = await location.serviceEnabled();
//     if (!serviceEnabled) {
//       final result = location.requestService;
//       if (result == true) {
//         if (kDebugMode) {
//           print('Service has been enabled');
//         }
//       } else {
//         throw Exception('GPS service not enabled');
//       }
//     }
//
//     final locationData = await location.getLocation();
//     return locationData;

// class UrlLauncher {
//
//   static launch(String s) {
//     UrlLauncher.launch("tel://$s");
//   }
// }
//   }
// }