import 'package:flutter/material.dart';

class JainEBook extends StatelessWidget {

  const JainEBook({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jain E-Book',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Jain E-Book Home'),
        ),
        body: const Center(
          child: Text('Welcome to Jain E-Book!'),
        ),
      ),
    );
  }
}
