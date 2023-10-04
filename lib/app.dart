import 'package:flutter/material.dart';

import 'pages/profile_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        useMaterial3: false,
      ),
      home: const ProfilePage(),
    );
  }
}
