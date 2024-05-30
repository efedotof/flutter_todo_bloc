

class CardListener {
  final String title;
  final int id;
  final String descriptions;

  CardListener(
      {this.descriptions = '',
      this.id = 0,
      this.title = ''});
  CardListener copyWith({required int id, required String title}) {
    return CardListener(
      id: id ?? this.id,
      title: title ?? this.title,
    );
  }
}
