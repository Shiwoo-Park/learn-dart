void main() {
  print('hello world');

  // ----------------

  var name = '실바';

  String explicit_value = 'hello';
  dynamic dynamic_val = null;

  if (dynamic_val is int) {
    dynamic_val.gcd(12);
    print(dynamic_val);
  } else if (dynamic_val is String) {
    var is_contain = dynamic_val.contains("a");
    print(is_contain);
  }
}
