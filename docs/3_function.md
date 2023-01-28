[prev](../README.md)

# Function

[Sample Code](../3_function.dart)

## Contents

- 함수의 구조
  - Basic: `RETURN_TYPE FUNCTION_NAME(ARGUMENTS){LOGIC};`
  - Arrow: `RETURN_TYPE FUNCTION_NAME(ARGUMENTS) => RETURN_VALUE;`
- RETURN_TYPE=`void` 인 경우 함수 리턴값이 없다는 뜻
- Arrow function 을 쓰면 간단한 처리용 함수 작성이 용이
- Named argument
  - 함수 argument 가 많을때 입력 순서와 상관 없이 name 을 직접 적어줌으로써 더 명시적으로 입력할 수 있도록 하는 기능
  - function 선언 시, argument 를 중괄호 `{}` 로 감싸면됨
  - `required` 라는 키워드로 특정 parameter 의 not null 을 보장 할 수 있음
- Optional positional argument: argument 에서 선택적으로 입력받고 싶은것이 있다면 대괄호를 사용하면 됨. (거의 안씀. named argument 가 더 많이 쓰임)
- 특수 Operator
  - `leftValue ?? rightValue` : 만약 leftValue 이 null 이면 rightValue 을 활용
  - `myVar ??= "newVal"` : 만약 myVar 가 null 이면 newVal 을 할당한다.
- `typedef`
  - 특정 타입의 alias 를 지정할 수 있다. (복잡한 타입의 단순화에 유용함)
  - 단순히 특정 타입의 동치 단어를 만들때 사용.
  - 특정 구조의 데이터 만들때는 반드시 class 사용 해라.
