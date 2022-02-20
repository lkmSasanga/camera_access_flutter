// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:test_project/utils/take_picture_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final cameras = await availableCameras();

  final firstCamera = cameras.first;
  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      home: landingPage(
          // Pass the appropriate camera to the TakePictureScreen widget.
          // camera: firstCamera,
          ),
    ),
  );
}

// class MyApp extends StatelessWidget {
//   @override
//   Future<Widget> build(BuildContext context) async {
//     WidgetsFlutterBinding.ensureInitialized();
//     final cameras = await availableCameras();
//     final firstCamera = cameras.first;
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: landingPage(
//         camera: firstCamera,
//       ),
//     );
//   }
// }

class landingPage extends StatefulWidget {
  const landingPage({
    Key? key,
    // required this.camera,
  }) : super(key: key);

  // final CameraDescription camera;
  @override
  State<landingPage> createState() => _landingPageState();
}

// ignore: camel_case_types
class _landingPageState extends State<landingPage> {
  var showCamera = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.cyan, Colors.blueGrey])),
        ),
        Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10.0),
            Container(
              width: 100.0,
              height: 100.0,
              // child: Image(
              //   image: AssetImage('assets/logo_transparent.png'),
              // ),
            ),
            Center(
                child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: GlassContainer(
                      height: 550,
                      width: 300,
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(colors: [
                        Colors.white.withOpacity(0.60),
                        Colors.white.withOpacity(0.60)
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                      borderGradient: LinearGradient(
                        colors: [
                          Colors.white.withOpacity(0.70),
                          Colors.white.withOpacity(0.20),
                          Colors.lightBlueAccent.withOpacity(0.10),
                          Colors.lightBlueAccent.withOpacity(0.12)
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.0, 0.39, 0.40, 1.0],
                      ),
                      blur: 15.0,
                      borderWidth: 1.5,
                      elevation: 3.0,
                      isFrostedGlass: true,
                      shadowColor: Colors.black.withOpacity(0.20),
                      alignment: Alignment.center,
                      frostedOpacity: 0.2,
                      margin: EdgeInsets.all(8.0),
                      padding: EdgeInsets.all(8.0),
                      child: Column(children: [
                        SizedBox(
                          height: 250.0,
                        ),
                        if (showCamera)
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Camera",
                                style: TextStyle(
                                  color: Colors.cyan[900],
                                  fontSize: 18.0,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ],
                          ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // TakePictureScreen(
                            //   camera: firstCamera,
                            // ),
                            RaisedButton(
                                onPressed: () {
                                  // ignore: avoid_print
                                  print("btn clicked");
                                  setState(() {
                                    showCamera = !showCamera;
                                  });
                                },
                                color: Colors.lightBlue[400],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                                child: Text(
                                  "Scan",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                            Text(
                              "!Warning Please hold the camera for seconds",
                              style: TextStyle(
                                color: Colors.cyan[900],
                                fontSize: 18.0,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ],
                        )
                      ]),
                    )))
          ],
        ))
      ],
    ));
  }
}
