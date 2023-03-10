[prev](../README.md)

# Class

[Sample Code](../4_class.dart)

## Contents

- 일반적인 클래스의 목적과 기능을 동일하게 가짐
- 특이한 점은 `Constructor method` 의 정의 방식이 다양하다는 점이다.
- 그 중에서도 `Named constructor(=custom constructor)` 를 만들때의 문법이 독특하다는 점이다.
- `Cascade Notation`: 객체 생성 뒤 바로 이어서 `..` 이라는 문법을 사용하여 추가 액션을 할 수도 있다.
- enum
  - value 맵핑까지 가능한 enum 은 없는지?
  - 너무 심플한것만 알려줘서 용도를 잘 모르겠음.
  - 밑에 함수를 붙일수는 없는건가?
- abstract class 
  - attribute 는 붙일 수 없는건가?
  - 그냥 method 만 붙이는데 쓰는건가?
- Mixin
  - 생성자 없는 클래스를 말한다.
  - 특정 property 또는 method set 을 가지고 있음
  - 특정 기능을 여러 클래스에 갖다 붙일 수 있다.


## 다양한 Constructor 정의 방식

### 1. Basic version

Constructor argument 를 일일히 할당

```dart
class User{
    late final int id;
    String name;
    int age;

    User(int id, String name, int age){
        this.id = id;
        this.name = name;
        this.age = age;
    }
}

var user1 = User(1, 'silva', 20);
```

### 2. Short version

Constructor argument 를 자동으로 할당

```dart
class User{
    late final int id;
    String name;
    int age;

    User(this.id, this.name, this.age);
}

var user1 = User(1, 'silva', 20);
```

### 3. Using named parameter

Constructor argument 전달방식에서 named parameter 기능 사용

```dart
class User{
    late final int id;
    String name;
    int age;

    User({
        required this.id, 
        required this.name, 
        required this.age
    });
}

var user1 = User(id: 1, name: 'silva', age: 20);
```

### 4. Named constructor (=Custom constructor)

하나의 클래스에 여러개 Constructor 를 두어 다양하게 객체 생성을 하고자 할때 활용

```dart
class User {
  late final int id;
  String name;
  int age;
  String gender;

  User({
    required this.id,
    required this.name,
    required this.age,
    required this.gender,
  });

  // named constructor w/ named parameter
  User.createBoy({
    required this.id,
    required this.name,
  })  : this.age = 10,
        this.gender = "male";

  // named constructor w/o named parameter
  User.createGirl(int id, String name)
      : this.id = id,
        this.name = name,
        this.age = 10,
        this.gender = "female";
}

var boy1 = User.createBoy(id: 1, name: 'silva');
var girl1 = User.createGirl(1,'merry');
```