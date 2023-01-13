# learn-dart

nomadcoders 의 "Dart 시작하기" 강좌를 들으면서 주요내용을 요약해본다.

- [Dart official site](https://dart.dev/)
- [Lecture link](https://nomadcoders.co/dart-for-beginners)

## 시작하기

### What is Dart?

- `Object-oriented`, `type safe` language
- Dart 는 실행하면 늘 `main()` 부터 찾아서 실행한다
- 늘 명령어 끝에 세미콜론(`;`)을 넣어야 함

### 개발환경 세팅

- Install `dart-sdk`
- Visual Studio Code + Dart plug-in

```bash
# install dart in MacOS
brew install dart-sdk

# Run Dart main()
dart run main.dart

# Github 403 error 해결
git remote set-url origin "https://shiwoo-park@github.com/shiwoo-park/learn-dart.git"
```

## 주요내용 요약

## Variables

- 일반 변수선언은 타입이 한번 정해지면 다른 타입의 값 할당 불가
- `var` & `Built-in Type`
  - 일반적인 변수 선언 시 사용
  - [Built-in Types(=explicit type)](https://dart.dev/guides/language/language-tour#built-in-types) : 클래스변수 or property 등에 주로 사용
    - ex. `String`, `int`, `double`, `bool` ...
  - `var`: 로컬변수(비즈니스 로직 짤때)에 가볍게 선언할 때 사용 (compiler 가 알아서 타입 인식)
- `dynamic`
  - 동적 타입 변수를 선언할 수 있는 유일한 방법
  - 사용한다면 매우 조심스럽게 사용해야하며, 되도록 쓰지 않는게 좋음
  - ex. `dynamic magicVar = 'magic';`
- null safety 기능
  - 모든 변수는 기본적으로 null 이 아님 (null 넣으면 에러)
  - nullable 표현을 위해 선언하는 타입에 물음표 `?` 을 사용 (ex. `String? name = null;`)
  - `myVar?.notNullFunc` 형식으로 nullable 체크를 쉽게 할 수 있음
- `final`: 단 한번만 할당할 수 있는 변수 선언 시 사용
- `late`
  - 선언 이후에 값을 할당할 변수 선언 시 사용
  - `lazy initialization` 에 활용: 코드에서 late로 선언한 변수가 실제 참조될때 lazy 하게 initialize 가 이루어짐
  - 효과가 좋은 2가지 경우
    - 로직 상, 변수 선언은 해야하나 당장 메모리 할당까지 하기에는 좀 머뭇거려질때
    - You’re initializing an instance variable, and its initializer needs access to this. (from 공홈... 이건 잘 이해가 안감)
  - 예를들어 `late String temperature = readThermometer();` 라는 라인이 있을때, 그 코드 아래쪽에서 `temperature` 를 참조하지 않으면 아예 `readThermometer()` 함수는 call 되지 않음.
  - (니코 왈) flutter 에서 API 호출 응답데이터를 `late final` 로 선언된 변수에 많이 할당하여 활용
- `const`
  - compile-time constant.
  - 즉, `컴파일 하기 전` 에 알고있는 고정값을 선언할때 사용
  - 앱에 담긴 코드를 앱스토어에 보내기 전에 이미 알고 있는 불변값 선언시 사용
  - 예를들어 API 호출 응답은 내가 코드를 실행하기 전에는 알수가 없으므로 `const` 대신 `final` 을 써야함
  - ex) `const request_timeout_default_sec = 3;`
