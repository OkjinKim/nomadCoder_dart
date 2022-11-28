String capitalizeName(String? name) {
  if (name != null) {
    return name.toUpperCase();
  }
  ;
  return 'ANON';
}

String capitalizeName2(String? name) =>
    name != null ? name.toUpperCase() : 'ANON';

// ??
String capitalizeName3(String? name) => name?.toUpperCase() ?? 'ANON';

void main() {
  print(capitalizeName('louis'));
  print(capitalizeName(null));

  print(capitalizeName2('louis'));
  print(capitalizeName2(null));

  print(capitalizeName3('louis'));
  print(capitalizeName3(null));

  // ??=
  String? name;
  name ??= 'oj';
  print(name);

  name = null;
  name ??= 'anoujt';
  print(name);
}
