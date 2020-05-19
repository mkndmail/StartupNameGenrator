import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerDemo extends StatefulWidget {
  @override
  _AnimatedContainerDemoState createState() => _AnimatedContainerDemoState();
}

class _AnimatedContainerDemoState extends State<AnimatedContainerDemo> {
  Color color;
  double borderRadius;
  double margin;
  @override
  void initState() {
    super.initState();
    color = randomColor();
    borderRadius = randomBorderRadius();
    margin = randomMargin();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                width: 128,
                height: 128,
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 400),
                  margin: EdgeInsets.all(margin),
                  curve: Curves.easeInOutBack,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(borderRadius),
                  ),
                ),
              ),
              MaterialButton(
                color: Colors.blueAccent,
                child: Text(
                  'change',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () => _randomiseUI(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _randomiseUI(){
    setState(() {
      color=randomColor();
      borderRadius=randomBorderRadius();
      margin=randomMargin();
    });
  }
  }

  Color randomColor() {
    return Color(
      0xFFFFFFFF & Random().nextInt(0XFFFFFFFF));
  }

  double randomBorderRadius() {
    return Random().nextDouble() * 64;
  }

  double randomMargin() {
    return Random().nextDouble() * 64;
  }



