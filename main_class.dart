// 1 - 기본 클래스 개념
class Player {
  final String name = 'oj';
  int age = 13;
  String country = 'korea';

  void sayHello() {
    var name = 'christine';
    print("Hi, my name is $name"); //christine
    print("Hi, my name is ${this.name}"); //oj
  }
}

// 2 - 동적으로 추가
class Company {
  final String name;
  int income;
  // late String name;
  // late int income;

  // Company(String name, int income) {
  //   this.name = name;
  //   this.income = income;
  // }

  // 👇👇👇👇👇👇refactoring👇👇👇👇👇👇
  Company(this.name, this.income);

  void printList() {
    print("Hello, $name! income : $income");
  }
}

// 3 - {}로 param 넣어줌 -> kv로 받을 수 있음 ::nomal constructor
class Student {
  String name;
  int age;
  int classNum;

  Student({
    required this.name,
    required this.age,
    required this.classNum,
  });

  void sayHello() {
    print("hello, i\'m $name from class $classNum.");
  }
}

// 4 - :을 사용해서 initialize 함 ::named constructor
class Product {
  final String name;
  int prodNum;
  int amount;
  String category;

  Product.addFood({
    required String name,
    required int prodNum,
  })  : this.name = name,
        this.prodNum = prodNum,
        this.amount = 0,
        this.category = 'food';

  Product.addCosmetic({
    required String name,
    required int prodNum,
  })  : this.name = name,
        this.prodNum = prodNum,
        this.amount = 0,
        this.category = 'cosmetic';
}

// 5 - json data를 class로 만들어주기
class Player2 {
  final String name;
  int xp;
  String team;

  Player2.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        xp = playerJson['xp'],
        team = playerJson['team'];

  void sayHello() {
    print('Hello, I\'m $name(xp: $xp) of $team team.');
  }
}

void main() {
  var player = Player();
  print(player.name);

  player.sayHello();

  var company1 = Company('kuku', 12345);
  company1.printList();
  var company2 = Company('docs', 613891);
  company2.printList();

  var student1 = Student(
    name: 'charlie',
    age: 12,
    classNum: 1,
  );
  student1.sayHello();

  var apiData = [
    {
      "name": "apple dog",
      "xp": 91234234,
      "team": "red",
    },
    {
      "name": "97",
      "xp": 92381721,
      "team": "red",
    },
    {
      "name": "grunt",
      "xp": 12342423,
      "team": "blue",
    },
  ];

  apiData.forEach((playerJson) {
    var player2 = Player2.fromJson(playerJson);
    player2.sayHello();
  });
}
