import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gpstracker/UI/common/Constants.dart' as cts;
import 'package:gpstracker/UI/themes/CustomTheme.dart';
import '../../bloc/currPage/current.page.bloc.dart';
import '../../bloc/currPage/current.page.event.dart';

abstract class PageConfig extends StatelessWidget {
  double? width;
  double? height;
  bool isEmpty = true;
  int pageIndex;
  String title;

  PageConfig({required this.pageIndex, this.title = "", Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).padding;
    height = height! - padding.top - padding.bottom;
    if (title == "") {
      title = cts.getTitle(cts.menus[pageIndex]['title'], context);
    }
    return Container(
      height: height,
      child: SingleChildScrollView(
          child: Column(
        children: [
          Hero(
              tag: "page_$title",
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // IconTheme(
                  //   data: CustomThemes.titleIconTheme,
                  //   child: Icon(
                  //     cts.menus[pageIndex]['leadingIcon'],
                  //   ),
                  // ),
                  Icon(
                    cts.menus[pageIndex]['leadingIcon'],size: 50,color: Theme.of(context).primaryColor,
                  ),
                  SizedBox(
                    width: width! * 0.04,
                  ),
                  Text(title, style: CustomThemes.titleTextStyle)
                ],
              )),
          buildContent(context)
        ],
      )),
    );
  }

  @protected
  Widget buildContent(BuildContext context) {
    return Container();
  }
}
