import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'Cloud',
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
      ),
      body: Container(
        height: 85,
        width: 150,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/technology.jpeg'),
            fit: BoxFit.cover,
          ),
          color: Colors.amberAccent,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            'Sports',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
