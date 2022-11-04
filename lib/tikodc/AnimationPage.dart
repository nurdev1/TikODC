import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class AnimationPage extends StatefulWidget {

  final Widget child;
  final int delais;
  const AnimationPage({
    required this.child, required this.delais});

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage>
with SingleTickerProviderStateMixin{
 late AnimationController _controller;
 late Animation<Offset> _animOffet;
  @override

  void initState(){
    super.initState();

    _controller = AnimationController(vsync: this,
    duration: Duration(milliseconds: 500),
    );

    final curve = CurvedAnimation(
        parent: _controller, curve: Curves.decelerate);

    _animOffet = Tween<Offset>(
      begin: Offset(0.0, 0.5),
      end: Offset.zero,
    ).animate(curve);

    Timer(Duration(milliseconds: widget.delais), () {
      _controller.forward();
    });
  }
  Widget build(BuildContext context) {
    return FadeTransition(opacity:_controller,
    child: SlideTransition(position: _animOffet,
      child: widget.child,

    ),);
  }
}

