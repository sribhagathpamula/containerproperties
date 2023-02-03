import 'dart:html';

import 'package:containerproperties/widgets.dart/drawer.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Settings",
          style: TextStyle(color: Colors.white),
        ),
        

        backgroundColor: Colors.black,
      ),
      drawer: CDrawer(),
      body: Center(
        child: Container(
          child: Text("setting screen"),
        ),
        
      ),
    );
    
  }
}
