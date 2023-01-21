// Classic way
String getFullName(String first, String last) {
  return '$last $first';
}

// Arrow function
String getFullNameV2(String first, String last) => '$last $first';

num plus(var a, var b) => a + b;

void main() {
  print(getFullName("Silva", "Park"));
  print(getFullNameV2("Silva", "Park"));
  print(plus(4, 7));
}
