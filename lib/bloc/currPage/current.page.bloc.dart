import 'package:flutter_bloc/flutter_bloc.dart';

import 'current.page.event.dart';
import 'current.page.state.dart';

class CurrentPageBloc extends Bloc<CurrentPageEvent, CurrentPageState> {
  CurrentPageBloc() : super(CurrentPageInitialState()) {
    on((SetCurrentPageEvent event, emit){
        emit(
        CurrentPageSuccessState(currentPageIndex: event.newCurrentPage));
    });
  }
}
