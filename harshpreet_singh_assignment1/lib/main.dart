// ignore_for_file: use_key_in_widget_constructors, todo

import 'dart:math';

import 'package:flutter/material.dart';

//https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e

//This app makes use of the Row, Column,
//Expanded, Padding, Transform, Container,
//BoxDecoration, BoxShape, Colors,
//Border, Center, Align, Alignment,
//EdgeInsets, Text, and TextStyle Widgets
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //first level widget of Material Design
      home: Scaffold(
        //default route
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text("App1 - UI Layout"),
          backgroundColor: Colors.blue,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(left: 40),
                  decoration: BoxDecoration(
                    color: Colors.yellow[700],
                    border: Border.all(width: 3),
                  ),
                  height: 100,
                  width: 100,
                  child: const Text('Container1'),
                ),
                Transform.rotate(
                  angle: pi / 4,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    height: 100,
                    width: 100,
                    child: const Text('Container 2'),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      width: 100,
                      height: 100,
                      margin: const EdgeInsets.only( top: 10, bottom: 20),
                      decoration: const BoxDecoration(
                        color: Colors.yellow,
                      ),
                      child: const Center(child: Text('Container 3')),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      width: 100,
                      height: 100,
                      margin: const EdgeInsets.only( bottom: 10),
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                       
                      ),
                      child: const Center(child: Text('Container 4')),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                    border: Border.all(width: 3, color: Colors.white),
                  ),
                  height: 100,
                  width: 100,
                  margin: const EdgeInsets.only( top: 250, right: 30,bottom: 30),
                  child: const Center(
                    child: Text(
                      'Container 5',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(right: 10),
                  decoration: const BoxDecoration(
                    color: Colors.red,
                  ),
                  height: 200,
                  width: 100,
                  margin: const EdgeInsets.only( top: 230),
                  child: const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Con 6',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

