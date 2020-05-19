import 'package:flutter/material.dart';

const owl_url =
    'https://raw.githubusercontent.com/flutter/website/master/src/images/owl.jpg';

class FadeInDemo extends StatefulWidget {
  @override
  _FadeInDemoState createState() => _FadeInDemoState();
}

class _FadeInDemoState extends State<FadeInDemo> {
  double _opacity = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.network(owl_url),
          MaterialButton(
            onPressed: () {
              setState(() {
                _opacity=1;
              });
            },
            child: Text(
              'Show Details',
              style: TextStyle(color: Colors.blueAccent),
            ),
          ),
          AnimatedOpacity(
            duration: Duration(seconds: 2),
            opacity: _opacity,
            child: Column(
              children: [
                Text('Type: Owl'),
                Text('Age: 39'),
                Text('Employment: None'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
