import 'package:api1/Authentication/sign_up.dart';
import 'package:api1/DataUpload/image_upload.dart';
import 'package:api1/home.dart';
import 'package:flutter/material.dart';

import 'Models/exaple2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const UploadImageScreen(),
    );
  }
}
