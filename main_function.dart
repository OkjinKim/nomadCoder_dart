String sayHello(String name) {
  return "hello $name, Nice to meet you!";
}

String sayHello2(String name) =>
    "hello $name, Nice to meet you!"; //in case of one line function

String sayHello3(String name, int age, String occupation) {
  return "hello, my name is $name, I'm $age years old, I'm a $occupation.";
}

String sayHello4({
  String name = 'anon',
  int age = 0,
  String occupation = 'no job',
}) {
  return "hello, my name is $name, I'm $age years old, I'm a $occupation.";
}

String sayHello5({
  required String name,
  required int age,
  required String occupation,
}) {
  return "hello, my name is $name, I'm $age years old, I'm a $occupation.";
}

String sayHello6(String name, int age, [String? country = 'korea']) =>
    "Hello $name, You are $age years old from $country.";

void main() {
  print(sayHello('oj'));
  print(sayHello3('chris', 13, 'student'));
  print(sayHello4(
    name: 'ojoj',
    age: 20,
    occupation: 'web developer',
  ));
  print(sayHello5(name: 'lslssl', age: 99, occupation: 'investor'));
  print(sayHello6('jisu', 9));
}
