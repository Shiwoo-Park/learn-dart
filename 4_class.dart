// Mixins...
class Strong {
  final double strengthLevel = 9.5;
}

class Fast {
  void run() {
    print("Ruuuunnn!!!!");
  }
}

enum Gender { male, female }

abstract class Human {
  void walk();
}

class Man extends Human {
  late String name;
  Gender gender = Gender.male;

  Man(this.name);

  @override
  void walk() {
    print("man walking!!!");
  }

  String getName() {
    return "Mr. ${name}";
  }
}

enum Weapon { gun, sword, bow }

class Soldier extends Man {
  Weapon weapon;

  Soldier(
    this.weapon,
    super.name, // super class property 로 직접 할당
  );

  void fight() {
    if (this.weapon == Weapon.gun) {
      print("Tang!!!Tang!!");
    } else if (this.weapon == Weapon.sword) {
      print("Chang!!!Chang!!!");
    } else {
      print("Shiiik!!Shiiik!!");
    }
  }
}

// Use Mixin
class Athlete extends Man with Strong, Fast {
  // super class 생성자 직접 호출
  Athlete(String name) : super(name);
}

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

  void showDesc() {
    print(this.toString());
  }

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
  // Cascade Notation
  var secondItemV3 = ItemV3(
    name: "spear",
    level: 4,
    color: "purple",
    can_upgrade: false,
  ) // 객체에 접근하여 간단한 액션을 할 수 있음 (할당, 함수 call 등)
    ..name = "dagger"
    ..level = 7
    ..color = "rainbow"
    ..showDesc();

  print("--------------------------");
  var soldier = Soldier(Weapon.gun, "Mark");
  print(soldier.getName());
  soldier.fight();

  print("--------------------------");
  var runner = Athlete("James");
  runner.run();
  print("${runner.getName()} strengthLevel: ${runner.strengthLevel}");
}
