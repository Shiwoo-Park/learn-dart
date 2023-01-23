// Classic way
String getFullName(String first, String last) {
  return '$last $first';
}

// Arrow function
String getFullNameV2(String first, String last) => '$last $first';

num plus(var a, var b) => a + b;

// Named argument
String getUserDesc({
  required String name, // required param
  int? age, // nullable param
  bool is_male = false, // param with default
}) {
  var gender = "female";
  if (is_male) {
    gender = "male";
  }

  return "$name($age) - $gender";
}

// Optional positional argument
String getTwoOrThreeNum(int num1, int num2, [int? num3 = 100]) =>
    "$num1 - $num2 - $num3";

void main() {
  print("getFullName: " + getFullName("Silva", "Park"));
  print("getFullNameV2: " + getFullNameV2("Silva", "Park"));

  print("=====================");
  print(plus(4, 7));

  print("=====================");
  print(getUserDesc(is_male: true, age: 25, name: "silva"));
  print(getUserDesc(is_male: false, name: "merry"));
  print(getUserDesc(name: "jake"));

  print("=====================");
  print(getTwoOrThreeNum(10, 20));
  print(getTwoOrThreeNum(10, 20, 30));
  print(getTwoOrThreeNum(10, 20, null));
}
