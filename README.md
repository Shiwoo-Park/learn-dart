# learn-dart

nomadcoders 의 "Dart 시작하기" 강좌를 들으면서 주요내용을 요약해본다.

[Link](https://nomadcoders.co/dart-for-beginners)

## 시작하기

### What is Dart?

- Object-oriented language
- Dart 는 실행하면 늘 `main()` 부터 찾아서 실행한다
- 늘 명령어 끝에 세미콜론(`;`)을 넣어야 함

### 개발환경 세팅

- Mac OS: `brew install dart-sdk`
- Visual Studio Code + Dart plug-in

### Commands

```bash
# Run Dart main()
dart run main.dart

# Github 403 error 해결
git remote set-url origin "https://shiwoo-park@github.com/shiwoo-park/learn-dart.git"
```

## 주요내용 요약

## Variables

- `var` 또는 명시적 타입(ex. `String`)으로 변수 선언 가능
- 로컬변수는 var, 클래스변수 or property 등은 명시적 타입(explicit type)을 주로 사용
- `var` 를 사용하더라도 첫번째 값과 타입에 안맞는 경우가 나중에 생기면 컴파일 시 오류 발생
- `dynamic` 타입이 다른 값이 할당될 수 있는 변수 선언시 사용
- null safety 기능
  - nullable 표현을 위해 선언하는 타입에 물음표 `?` 을 사용 (`String? name = null;`)
  - `?` 가 없으면 어떤 변수든 nullable 이 될 수 없음
  - `myVar?.notNullFunc` 형식으로 nullable 체크를 쉽게 할 수 있음
