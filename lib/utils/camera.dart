// import 'package:flutter/material.dart';
// import 'dart:io';
// import 'package:camera_camera/camera_camera.dart';

// class Camera extends StatefulWidget {
//   Camera({Key? key}) : super(key: key);
//   // final String title;

//   @override
//   State<Camera> createState() => _CameraState();
// }

// class _CameraState extends State<Camera> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: CameraCamera(
// //         onFile: (file) => print(file);
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         onPressed: (){
// //            Navigator.push(
// //         context,
// //         MaterialPageRoute(
// //             builder: (_) => CameraCamera(
// //                   onFile: (file) {
// //                     photos.add(file);
// //                     //When take foto you should close camera
// //                     Navigator.pop(context);
// //                     setState(() {});
// //                   },
// //                 )))
// //         },
// //         child: Icon(Icons.camera_alt),
// //       ),
// // );
// //   }
//   final photos = <File>[];

//   void openCamera() {
//     Navigator.push(
//         context,
//         MaterialPageRoute(
//             builder: (_) => CameraCamera(
//                   onFile: (file) {
//                     photos.add(file);
//                     Navigator.pop(context);
//                     setState(() {});
//                   },
//                 )));
//   }

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         title: Text("title"),
//       ),
//       body: GridView.builder(
//         gridDelegate:
//             SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//         itemCount: photos.length,
//         itemBuilder: (_, index) => Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             width: size.width,
//             child: Image.file(
//               photos[index],
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: openCamera,
//         child: Icon(Icons.camera_alt),
//       ),
//     );
//   }
// }
