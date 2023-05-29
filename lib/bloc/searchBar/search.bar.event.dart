abstract class SearchBarEvent{

}

class ToggleSearchBarEvent extends SearchBarEvent{

}
class SearchEvent extends SearchBarEvent{
  String keyword;

  SearchEvent({required this.keyword});
}