void main() {
  Set<int> numbers = {2, 3, 4, 5}; //all the items are unique
  numbers.add(1);
  numbers.add(1);
  numbers.add(1);
  print(numbers);

  List<int> numberlist = [1, 2, 3, 4];
  numberlist.add(5);
  numberlist.add(5);
  numberlist.add(5);
  print(numberlist);
}
