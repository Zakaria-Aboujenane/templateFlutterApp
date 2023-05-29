import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gpstracker/bloc/searchBar/search.bar.event.dart';
import 'package:gpstracker/bloc/searchBar/search.bar.state.dart';

class SearchBarBloc extends Bloc<SearchBarEvent,SearchBarState>{
  SearchBarBloc():super(SearchBarInitialState()){
    on((ToggleSearchBarEvent event, emit){
      if(state.isOpen){
        emit(SearchBarClosedState(isOpen: false));
      }else{
        emit(SearchBarOpenState(isOpen: true));
      }
    });
  }
}