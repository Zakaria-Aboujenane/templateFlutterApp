import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gpstracker/UI/common/routing.app.dart';
import 'package:gpstracker/animations/ScreenTitle.dart';
import 'package:gpstracker/animations/sandbox.dart';
import 'package:gpstracker/bloc/currPage/current.page.bloc.dart';
import 'package:gpstracker/bloc/searchBar/search.bar.bloc.dart';

import 'UI/app.boot.config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context)=>CurrentPageBloc()),
          BlocProvider(create: (context)=>SearchBarBloc()),
        ],
        child: AppBootConfig()
    );
    // return MaterialApp(
    //   home: ScreenTitle()
    // );
  }
}