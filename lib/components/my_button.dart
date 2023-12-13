import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyButton extends StatelessWidget {

  final Function() onTap;

  MyButton({
    super.key,
    required this.onTap
    });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: Text('Sign in',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
          ),
      ),
    );
  }
}