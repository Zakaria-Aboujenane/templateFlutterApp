abstract class SearchBarState{
  bool isOpen;

  SearchBarState({required this.isOpen});
}
class SearchBarOpenState extends SearchBarState{
  SearchBarOpenState({required super.isOpen});

}
class SearchBarClosedState extends SearchBarState{
  SearchBarClosedState({required super.isOpen});

}
class SearchBarInitialState extends SearchBarState{
  SearchBarInitialState():super(isOpen: false);

}