class ItemV3 {
  String name;
  int level;
  String color;
  bool can_upgrade;

  // named parameters
  ItemV3({
    required this.name,
    required this.level,
    required this.color,
    required this.can_upgrade,
  });

  ItemV3.upgradableItem({
    required this.name,
    required this.level,
  })  : this.can_upgrade = true,
        this.color = 'gold';

  ItemV3.cursedItem(String name, int level)
      : this.name = name,
        this.level = level,
        this.can_upgrade = false,
        this.color = 'black';

  @override
  String toString() {
    return "V3 - [lv.$level] $name (color=$color, upgradable=$can_upgrade)";
  }
}

class ItemV2 {
  final String name;
  int level;

  // short version constructor
  ItemV2(this.name, this.level);

  @override
  String toString() {
    return "V2 - [lv.$level] $name";
  }
}

class Item {
  late final int id;
  late String name;
  late int level;

  // long version constructor
  Item(int id, String name, int level) {
    this.id = id;
    this.name = name;
    this.level = level;
  }

  @override
  String toString() {
    return "#$id - [lv.$level] $name";
  }
}

class Player {
  // Don't use 'var'
  String name = 'silva';
  int xp = 98;

  final String code = 'CODE_01';
  String memo = "likes piano";

  void sayHello() {
    var name = "local_silva";
    print("my local name is $name");
    print("my class name is ${this.name}"); // 로컬변수와 충돌하면 this 사용
    print("my code is $code"); // 충돌 없을때는 그냥 참조
  }
}

void main() {
  var player = Player();
  print("xp: ${player.xp}");
  player.sayHello();

  player.name = 'jane';
  print("changed name to ${player.name}");

  //player.code = "CODE_02";  // impossible to change "final"

  print("--------------------------");
  var item = Item(1, "blade", 5);
  print(item);

  print("--------------------------");
  var itemV2 = ItemV2("small shield", 7);
  print(itemV2);

  print("--------------------------");
  var itemV3 = ItemV3(
    name: "spear",
    level: 4,
    color: "purple",
    can_upgrade: false,
  );
  print(itemV3);

  var upgradableItemV3 = ItemV3.upgradableItem(level: 5, name: "bat");
  print(upgradableItemV3);

  var cursedItemV3 = ItemV3.cursedItem("hat", 7);
  print(cursedItemV3);

  print("--------------------------");
  var secondItemV3 = ItemV3(
    name: "spear",
    level: 4,
    color: "purple",
    can_upgrade: false,
  )
    ..name = "dagger"
    ..level = 7
    ..color = "rainbow";
  print(secondItemV3);
}
