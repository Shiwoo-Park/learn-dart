void main() {
  print('hello world');

  // var type
  var name = '실바';

  double rating = 3.5;
  print(rating);

  // explicit type
  String explicit_value = 'hello';

  // dynamic type
  dynamic dynamic_val = null;

  if (dynamic_val is int) {
    dynamic_val.gcd(12);
    print(dynamic_val);
  } else if (dynamic_val is String) {
    var is_contain = dynamic_val.contains("a");
    print(is_contain);
  }

  // nullable
  // 변수 뒤에 ?를 붙여서 자동으로 nullable 검증을 한뒤 attribute 등을 활용가능
  String notNullableStr = 'notnullable';

  String? nullableStr = '박시우';
  print(nullableStr?.length);

  nullableStr = null;
  print(nullableStr?.length);

  // final
  final int limitOffset;
  limitOffset = 100;
  print(limitOffset);

  // late
  late final int age;
  // print(age); // can't read (becuase it's late var)
  age = 30; // assign only once
  print(age); // can't read (becuase it's late var)
  // age = 21; // can't change

  // const
  const request_timeout_default_sec = 3;
  print(request_timeout_default_sec);
}
