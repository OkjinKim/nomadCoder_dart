void main() {
  var name = 'hello';
  name = 'world';

  int age = 2;
  age = 4;

  String? word = 'apple';
  word = null;
  if (word != null) {
    word.isEmpty;
  }

  dynamic nickname;
  if (nickname is String) {
    nickname.isEmpty;
  }

  final address = 'here';

  late final String name2;
  //NOTE - api 연결된 후 나중에 정의됨

  // const API = fetchApi();
  //NOTE - compile time constant
}
