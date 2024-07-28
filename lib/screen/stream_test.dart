import 'package:fast_app_base/common/common.dart';

void main() {
  /// Stream 기본 개념

  /// Stream 생성과 수행

  /// Stream 데이터 관찰
  ///
  final controller = StreamController<int>();
  final stream = controller.stream;

  // countStream(4).listen((stream) {
  //   print(stream);
  // });

  // addDateToTheSink(controller);

  // stream.listen((event) {
  //   print(event);
  // });

  // countStream(4).map((event) => '$event 초가 지났습니다').listen((event){
  //   print(event);
  // });

  /// 위젯에서 Stream Data표현하기

  /// Stream 데이터 관찰2 - BroadcastStream

  /// 2개의 위젯에서 하나의 BraodcastSteam Data vygusgkrl
  ///
}

void addDateToTheSink(StreamController<int> controller) async {
  for (int i = 1; i <= 4; i++) {
    await sleepAsync(1.seconds);
    controller.sink.add(i);
  }
}

Stream<int> countStream(int max) async* {
  await sleepAsync(2.seconds);
  for (int i = 1; i <= max; i++) {
    await sleepAsync(1.seconds);
    yield i;
  }
}
