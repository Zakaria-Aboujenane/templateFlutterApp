abstract class CurrentPageState{
  int currentPageIndex;
  CurrentPageState({required this.currentPageIndex});
}
class CurrentPageLoadingState extends CurrentPageState{
  CurrentPageLoadingState({required super.currentPageIndex});
}
class CurrentPageSuccessState extends CurrentPageState{
  CurrentPageSuccessState({required super.currentPageIndex});
}

class CurrentPageErrorState extends CurrentPageState{
  final String errorMessage;
  CurrentPageErrorState({required this.errorMessage,required super.currentPageIndex});
}
class CurrentPageInitialState extends CurrentPageState{
  CurrentPageInitialState():super(currentPageIndex: 0);
}