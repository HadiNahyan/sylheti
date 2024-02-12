import 'package:flutter/material.dart';
class Nagri extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("নাগরী লিপি"),),
      body:InteractiveViewer(
    boundaryMargin: EdgeInsets.all(100),
    minScale: 1,
    maxScale: 3,
    child: Container(
        child: ListView(
          children: [
            Image.asset("image/nagri1.jpg"),
            Image.asset("image/nagri2.jpg"),
          ],
        ),
      ),
      )
    );
  }
}
