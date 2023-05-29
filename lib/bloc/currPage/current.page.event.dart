abstract class CurrentPageEvent{

}
class SetCurrentPageEvent extends CurrentPageEvent{
  int newCurrentPage;

  SetCurrentPageEvent({ required this.newCurrentPage});
}