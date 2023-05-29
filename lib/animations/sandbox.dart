import 'package:flutter/material.dart';

class Sandbox extends StatefulWidget {
  const Sandbox({Key? key}) : super(key: key);

  @override
  State<Sandbox> createState() => _SandboxState();
}

class _SandboxState extends State<Sandbox> {
  double _opacity = 1;
  double _margin = 0;
  double _width = 200;
  Color _color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:AnimatedContainer(
        width: _width,
        color: _color,
        margin: EdgeInsets.all(_margin),
        duration: Duration(seconds: 1),
        child: Column(
          children: <Widget>[
            SizedBox(height: 100,),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    _margin+=1;
                  });
                },
                child: Text("click me")
            ),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    _width-=100;
                  });
                },
                child: Text("add width me")
            ),
            AnimatedOpacity(
                opacity: _opacity,
                duration: Duration(seconds: 2),
              child: Text("hide lfa9ira dmi",style: TextStyle(color: Colors.white),),
            ),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    _opacity=0.1;
                  });
                },
                child: Text("opacity animation")
            ),
          ],
        ),
      ),
    );
  }
}
