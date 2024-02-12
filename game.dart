import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
class Game extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Save the ball')),
      body: Center(child: MyDraggableObject()),
    );
  }
}

class MyDraggableObject extends StatefulWidget {
  @override
  _MyDraggableObjectState createState() => _MyDraggableObjectState();
}

class _MyDraggableObjectState extends State<MyDraggableObject> {
  double _positionX = 0;
  double _positionY = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.black26,width: 10)),
      height: MediaQuery.of(context).size.height*.89,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Positioned(
            top: 5,
            right: -15,
            child:Icon(Icons.linear_scale_outlined,color:Colors.red,size: 100,),
          ),
          Positioned(
            top: 80,
            right: 0,
            child:Icon(Icons.linear_scale_outlined,color:Colors.red,size: 220,),
          ),
          Positioned(
            top: 250,
            left: 50,
            child:Icon(Icons.linear_scale_outlined,color:Colors.red,size: 150,),
          ),
          Positioned(
            top: 410,
            right: -15,
            child:Icon(Icons.linear_scale_outlined,color:Colors.red,size: 270,),
          ),
          Positioned(
            bottom: 200,
            left: -10,
            child:Icon(Icons.linear_scale_outlined,color:Colors.red,size: 150,),
          ),
          Positioned(
            top: 20,
            left: -10,
            child:Icon(Icons.linear_scale_outlined,color:Colors.red,size: 100,),
          ),
          Positioned(
            top: 50,
            left: 200,
            child:Icon(Icons.linear_scale_outlined,color:Colors.red,size: 20,),
          ),
          Positioned(
            left: _positionX,
            top: _positionY,
            child: GestureDetector(
              onPanUpdate: (details) {
                setState(() {
                  _positionX += details.delta.dx;
                  _positionY += details.delta.dy;
                });
              },
              child: Container(
                width: 100,
                height: 100,
              //  color: Colors.blue,
                alignment: Alignment.center,
                child: Icon(Icons.sports_baseball,color: Colors.orange,size: 100,),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyGame extends FlameGame{
 @override
  // TODO: implement onLoadFuture
  FutureOr<void> onLoad() {
   print('<game Loop> onLoad() called');
   return super.onLoad();
 }
 @override
  void update(double dt) {
    // TODO: implement update
    super.update(dt);
    print('update time $dt');
  }
  @override
  void render(Canvas canvas) {
    // TODO: implement render
    super.render(canvas);
    print('called');
  }
}

