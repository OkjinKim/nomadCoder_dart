void main() {
  var member = ['hoy', 'jason', 'chris'];
  var newMember = [
    'louis',
    'ralph',
    for (var mem in member) "+${mem}",
  ];
  print(newMember);
}
