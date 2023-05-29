import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gpstracker/UI/common/Constants.dart' as cts;
import '../../../bloc/currPage/current.page.bloc.dart';
import '../../../bloc/currPage/current.page.event.dart';
import 'drawer.item.widget.dart';
import 'main.drawer.header.widget.dart';
import '';

class MainDrawer extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey;

  MainDrawer({Key? key, required this.navigatorKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const MainDrawerHeader(),
          Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return DrawerItemWidget(
                        title: cts.menus[index]['title'],
                        leadingIcons: cts.menus[index]['leadingIcon'],
                        trailingIcon: cts.menus[index]['trealingIcon'],
                        onAction: () {
                          context
                              .read<CurrentPageBloc>()
                              .add(SetCurrentPageEvent(newCurrentPage: index));
                          navigatorKey.currentState
                              ?.pushNamed(cts.menus[index]['route']);
                          Navigator.pop(context);
                        });
                  },
                  separatorBuilder: (context, index) {
                    return const Divider(
                      height: 6,
                    );
                  },
                  itemCount: cts.menus.length))
        ],
      ),
    );
  }
}
