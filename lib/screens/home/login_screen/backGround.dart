import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class BackGround extends StatelessWidget {
  final Widget child;
  BackGround({
    @required this.child,
  });


  @override
  Widget build(BuildContext context) {
  final  size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: size.width,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              'assets/images/top1.png',
              // color: Colors.blue,
              width: size.width,
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              'assets/images/top2.png',
              // color: Colors.blueAccent,
              width: size.width,
            ),
          ),
          Positioned(
            top: 50,
            right: 30,
            child: Lottie.asset(
              
              'assets/images/ring.json',
              width: 180,
              fit: BoxFit.cover
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              'assets/images/bottom1.png',
              width: size.width,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              'assets/images/bottom2.png',
              width: size.width,
            ),
          ),
          child
        ],
      ),
    );
  }
}