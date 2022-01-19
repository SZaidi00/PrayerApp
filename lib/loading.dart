import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class loading extends StatefulWidget {
  @override
  _loadingState createState() => _loadingState();
}

class _loadingState extends State<loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Center(
        child: LoadingAnimationWidget.dotsTriangle(
        color: Colors.lightGreen.shade900,
        size: 100,
        ),
      ),
    );
  }
}
