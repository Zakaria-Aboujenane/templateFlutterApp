import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gpstracker/bloc/currPage/current.page.bloc.dart';
import 'package:gpstracker/bloc/currPage/current.page.event.dart';
import 'package:gpstracker/bloc/currPage/current.page.state.dart';

import '../drawer/drawer.item.widget.dart';
import 'package:gpstracker/UI/common/Constants.dart' as cts;

class BottomBarWidget extends StatelessWidget {
  var currentIndex = 1;
  final GlobalKey<NavigatorState> navigatorKey;
  GlobalKey<ConvexAppBarState> _appBarKey = GlobalKey<ConvexAppBarState>();

  BottomBarWidget({Key? key, required this.navigatorKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).padding;
    height = height - padding.top - padding.bottom;
    return BlocBuilder<CurrentPageBloc, CurrentPageState>(
        builder: (context, state) {
      _appBarKey.currentState?.animateTo(state.currentPageIndex);
      return ConvexAppBar(
          activeColor: Theme.of(context).focusColor,
          style: TabStyle.reactCircle,
          color: Colors.white,
          key: _appBarKey,
          initialActiveIndex: state.currentPageIndex,
          height: height * 0.08,
          backgroundColor: Theme.of(context).primaryColor,
          items: cts.menus
              .map((e){
                double size=32.0;
                if(cts.menus[state.currentPageIndex]== e){
                  size = 45.0;
                }
                return TabItem(
                    icon: ClipRRect(
                      child: Hero(
                        tag: 'page_${e['title']}',
                        child: Icon(e['leadingIcon'],size: size,),
                      ),
                    ),
                    title: e['title']);
          })
              .toList(),
          onTap: (int i) {
            context
                .read<CurrentPageBloc>()
                .add(SetCurrentPageEvent(newCurrentPage: i));
            navigatorKey.currentState?.pushNamed(cts.menus[i]['route']);
          });
      // return ConvexAppBar.builder(
      //     itemBuilder:CustomBuilder(),
      //     count: 2);
    });
  }
}
