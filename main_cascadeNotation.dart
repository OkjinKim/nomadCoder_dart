class Player {
  String name;
  int age;
  String country;

  Player({
    required this.name,
    required this.age,
    required this.country,
  });

  void sayHello() {
    print("Hi, my name is $name");
  }
}

void main() {
  var oj = Player(name: 'oj', age: 12, country: "korea");
  oj.name = 'ojoj';
  oj.age = 12;
  oj.country = 'south korea';
  oj.sayHello();

  // 👇👇👇👇👇👇use cascade notation👇👇👇👇👇👇
  oj
    ..age = 24
    ..name = 'ojojojojojoj'
    ..country = 'republic of korea';
  oj.sayHello();
}
