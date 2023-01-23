# Function

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
