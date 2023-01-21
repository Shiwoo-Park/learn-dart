[prev](../README.md)

# Data types

## Contents

- 모든 타입은 Object 이다. (class)
- 리스트 타입의 마지막 element 에 쉼표를 찍어주면 여러줄로 자동 포맷팅 해준다.
- 문자열에 Single & Double quote 둘다 사용 가능
- 문자열에 변수 집어넣기: `$myVar` 또는 `${myIntVar + 2}`
- 리스트 안에 element 로 expression 을 집어넣을 수 있음. (if, for 등)
- Set 은 item 의 유일함(unique) 을 보장

## Code Examples

```dart
// String interpolation
var animal = 'zebra';
var animalCount = 1;
var sentence = "The count of $animal is ${animalCount + 2}";

// List
bool giveMeFive = true;
List<int> typedNums = [
    1,
    2,
    if (giveMeFive) 5, // element 자리에 expression 삽입 가능
];


// Map
Map<String, Object> playerMap = {'name': 'silva', 'xp': 12.22, 'genius': true};

// Set
Set<int> mySet = {1,2};
```
