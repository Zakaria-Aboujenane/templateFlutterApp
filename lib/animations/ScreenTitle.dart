import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {
  const ScreenTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      child: Text("text",style: TextStyle(fontSize: 36)),
      duration: Duration(seconds: 1),
      tween: Tween<double>(begin: 0,end: 1),
      builder : (BuildContext context, value, child){
        return Opacity(
          opacity: value,
          child: Padding(
            padding: EdgeInsets.only(top: value*20),
            child: child,
          )
        );
      },
    );
  }
}
