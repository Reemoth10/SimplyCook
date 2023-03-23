import 'dart:ffi';

import 'package:flutter/material.dart';

class NoteMainPage extends StatefulWidget {
  const NoteMainPage({super.key});

  @override
  State<NoteMainPage> createState() => _NoteMainPageState();
}

class _NoteMainPageState extends State<NoteMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(
          Icons.menu,
          color: Colors.amber,
        ),
        title: Text("New Note",
            textAlign: TextAlign.left, style: TextStyle(color: Colors.white)),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(Icons.star, color: Colors.amber))
        ],
      ),
      bottomNavigationBar: NavigationBar(destinations: [
        NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Home'),
        NavigationDestination(icon: Icon(Icons.notes_outlined), label: 'Notes'),
        NavigationDestination(
            icon: Icon(Icons.settings_outlined), label: 'Settings'),
        NavigationDestination(
            icon: Icon(Icons.account_box_outlined), label: 'Account')
      ]),
    );
    
  }
}
