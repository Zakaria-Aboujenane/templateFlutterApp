import 'package:flutter/material.dart';
import 'package:gpstracker/UI/pages/page.config.dart';

class DriversPage extends PageConfig{
  DriversPage({super.key}):super(pageIndex: 1);



  @override
  Widget buildContent(BuildContext context) {
    // TODO: implement buildContent
   return Container(
     child: Text("hello , build Page"),
   );
  }
}