import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gpstracker/UI/common/empty.page.dart';
import 'package:gpstracker/UI/pages/page.config.dart';
import 'package:gpstracker/UI/pages/home.page.dart';
import 'package:gpstracker/UI/widgets/bottombar/bottom.bar.widget.dart';
import 'package:gpstracker/UI/widgets/drawer/main.drawer.widget.dart';
import 'package:gpstracker/UI/common/Constants.dart' as cts;
import 'package:gpstracker/UI/widgets/topbar/custom.bar.widget.dart';
import '../../bloc/currPage/current.page.bloc.dart';
import '../../bloc/currPage/current.page.state.dart';
import '../pages/drivers.page.dart';
class RoutingApp extends StatelessWidget {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
  PageConfig homePage = EmptyPage();
  PageConfig driversPage = EmptyPage();
  RoutingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   double width  = MediaQuery.of(context).size.width;
   double height = MediaQuery.of(context).size.height;
   var padding = MediaQuery.of(context).padding;
   height = height - padding.top - padding.bottom;
    return Scaffold(
        drawer: MainDrawer(navigatorKey: _navigatorKey),
        appBar:CustomBarWidget(width: width,),
        body:WillPopScope(
          onWillPop: () async {
            if (_navigatorKey.currentState!.canPop()) {
              _navigatorKey.currentState?.pop();
              return false;
            }
            return true;
          },
          child:  Navigator(
            key: _navigatorKey,
            initialRoute: "/",
            onGenerateRoute: (RouteSettings settings) {
              WidgetBuilder builder;
              initialisePages();
              switch (settings.name) {
                case '/':
                  builder = (BuildContext context) => homePage;
                  break;
                case '/drivers':
                  builder = (BuildContext context) => driversPage;
                  break;
                default:
                  throw Exception('Invalid route: ${settings.name}');
              }
              return MaterialPageRoute(builder: builder, settings: settings);
            },
          )
        ),
        bottomNavigationBar: BottomBarWidget(navigatorKey: _navigatorKey,));
  }
  initialisePages(){
    print(homePage.isEmpty);
    homePage = homePage.isEmpty ? HomePage() : EmptyPage();
    driversPage = driversPage.isEmpty ? DriversPage() :EmptyPage();
  }
}
