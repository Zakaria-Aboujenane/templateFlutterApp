import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class MainDrawerHeader extends StatelessWidget {
  const MainDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DrawerHeader(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children:[
             CircleAvatar(
              backgroundImage: AssetImage("assets/images/profile.png"),
            ),
            SizedBox(width: 30,),
            Text("Zakaria Aboujenane"),
          ],
        )
    );
  }
}
