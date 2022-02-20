// ignore: file_names
// ignore: file_names
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'dart:async';
import 'dart:io';

class TakePictureScreen extends StatefulWidget {
  const TakePictureScreen({Key? key, required camera,}) : super(key: key);
  // final CameraDescription camera;

  @override
  State<TakePictureScreen> createState() => _TakePictureScreenState();

}

class _TakePictureScreenState extends State<TakePictureScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      margin: const EdgeInsets.only(bottom: 10),
      child: MaterialButton(
        color: const Color.fromARGB(255, 243, 212, 212),
        // onPressed: onPressed,
        minWidth: 200,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)), onPressed: () {  },
      ),
    );
  }
}