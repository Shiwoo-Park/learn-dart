void main() {
  String name = "nico";
  bool isMale = true;
  int age = 33;
  double rating = 3.4;

  // int 와 double 은 num 을 상속받는다.
  num a = 111;
  a = 1.234;

  // List
  var giveMeFive = true;
  var nums = [1, 2, 3, 4];
  List<int> typedNums = [
    1,
    2,
    3,
    if (giveMeFive) 5, // element 자리에 expression 삽입 가능
  ];
  nums.add(6);
  print(nums.toString());
  print(typedNums.toString());

  // String interpolation
  var animal = 'zebra';
  var color = "black & white";
  var animalCount = 1;
  var sentence = "The color of $animal is $color (count=${animalCount + 2})";
  print(sentence);

  // Collection + For
  var oldFriends = ['aaa', 'bbb'];
  var newFriends = [
    'ccc',
    'ddd',
    for (var friend in oldFriends) "💩${friend}",
  ];
  print(newFriends);

  // Map
  var playerMap = {'name': 'silva', 'xp': 12.22, 'genius': true};
  print(playerMap['name']);

  List<Map<String, Object>> players = [
    {'name': 'marry', 'xp': 99.9, 'genius': false}
  ];
  players.add(playerMap);

  Map<int, bool> intBoolMap = {1: true, 2: false};
  Map<List<int>, bool> intListBoolMap = {
    [1, 1]: true,
    [1, 2]: false
  };
  var tmpKey = [1, 2];
  print(intListBoolMap[tmpKey]); // null.....?

  // Set
  var mySet = {1, 2, 3, 4};
  Set<int> typedSet = {5, 6, 7, 8};
  mySet.add(3);
  print(mySet);
}
