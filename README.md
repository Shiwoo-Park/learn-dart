# learn-dart

nomadcoders 의 "Dart 시작하기" 강좌를 들으면서 주요내용을 요약해본다.

- [Dart official site](https://dart.dev/)
- [Lecture link](https://nomadcoders.co/dart-for-beginners)

## 시작하기

### What is Dart?

- Object-oriented language
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

- `var` & 명시적 타입(explicit type)
  - 일반적인 변수 선언 시 사용 가능
  - [Built-in Types](https://dart.dev/guides/language/language-tour#built-in-types) : 클래스변수 or property 등에 주로 사용
    - ex. `String`, `int`, `double`, `bool` ...
  - `var`: 로컬변수(비즈니스로직 짤때)에 가볍게 선언할 때 사용 (compiler 가 알아서 타입 인식)
  - 타입이 한번 정해지면 다른 타입값 할당 불가
- `var` 를 사용하더라도 첫번째 값과 타입에 안맞는 경우가 나중에 생기면 컴파일 시 오류 발생
- `dynamic`
  - 타입이 다른 값을 할당할 수 있는 변수 선언시 사용
  - 사용한다면 매우 조심스럽게 사용해야하며, 되도록 쓰지 않는게 좋음
- null safety 기능
  - 모든 변수는 기본적으로 null 이 아님 (null 넣으면 에러)
  - nullable 표현을 위해 선언하는 타입에 물음표 `?` 을 사용 (ex. `String? name = null;`)
  - `myVar?.notNullFunc` 형식으로 nullable 체크를 쉽게 할 수 있음
- `final`: 단 한번만 할당할 수 있는 변수 선언 시 사용
- `late`
  - `final` 또는 `var` 앞에 붙일 수 있는 `modifier`
  - 변수 선언은 해야하나 선언과 동시에 값을 할당하지않고 나중에 하게되는 경우 사용
  - flutter 에서 API 호출 응답데이터를 `late final` 로 선언된 변수에 많이 할당하여 활용
- `const`
  - 앱에 담긴 코드를 앱스토어에 보내기 전에 이미 알고 있는 불변값 선언시 사용
  - 컴파일 타임에 인식하게 될 final 변수를 만들때 사용
    - 컴파일 타임: 코드가 실행되기 이전을 말한다. 즉, 내가 코드를 짜고있을 당시를 뜻함
  - 예를들어 API 호출 응답은 내가 코드를 실행하기 전에는 알수가 없으므로 `const` 대신 `final` 을 써야함
  - ex) `const request_timeout_default_sec = 3;`
