import 'package:flutter/material.dart';
import 'package:gpstracker/UI/pages/page.config.dart';

class EmptyPage extends PageConfig {
  EmptyPage({super.key}) : super(pageIndex: 0,title: "empty page");

  @override
  Widget buildContent(BuildContext context) {
    // TODO: implement buildContent
    isEmpty = true;
    return Container(
      child: Text("this is an empty page"),
    );
  }
}
