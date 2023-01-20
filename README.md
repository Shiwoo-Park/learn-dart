# learn-dart

nomadcoders 의 "Dart 시작하기" 강좌를 들으면서 주요내용을 요약해본다.

- [Dart official site](https://dart.dev/)
- [Lecture link](https://nomadcoders.co/dart-for-beginners)

## 시작하기

### What is Dart?

- 컴파일러
  - Dart Web: dart -> javascript 변환
  - Dart Native: dart -> CPU 타입에 따라 실행할 수 있는 기계어로 변환
- 모든 플랫폼에서 빠르다
  - 2가지 컴파일 방식을 모두 지원
  - `AOT (Ahead Of Time)`: 미리 컴파일 결과 기계어 타입을 지정하고 컴파일, 서비스 배포용
  - `JIT (Just In Time)` + `incremental recompilation`: Dart VM 을 사용하여 소량의 수정에도 빠르게 컴파일 결과를 제공, 개발용
- 특징
  - Null safety 지원
  - `Object-oriented`, `type safe` language
  - Dart 는 실행하면 늘 `main()` 부터 찾아서 실행한다
  - 늘 명령어 끝에 세미콜론(`;`)을 넣어야 함
- Flutter 가 Dart 를 사용함으로써 강력한 이유
  - 프레임워크와 그것을 지원하는 언어가 둘다 같은 회사에서 소유하고 있음.
  - Flutter team 에서 언어레벨의 요구사항이 생기면 Dart 팀에 요청 가능


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

- [1. Variables](docs/1_variable.md)
- [2. Data Types](docs/2_data_type.md)
