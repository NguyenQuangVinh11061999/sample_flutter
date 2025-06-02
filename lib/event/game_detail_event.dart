abstract class GameDetailEvent {}

class GameDetailFetchData extends GameDetailEvent {
  int id;
  GameDetailFetchData(this.id);
}
