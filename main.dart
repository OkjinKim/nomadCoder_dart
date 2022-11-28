void main() {
  var name = 'hello';
  name = 'world';

  String? word = 'apple';
  word = null;
  if (word != null) {
    word.isEmpty;
  }

  int age = 2;
  age = 4;

  dynamic nickname;
  if (nickname is String) {
    nickname.isEmpty;
  }
}
