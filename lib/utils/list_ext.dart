import 'dart:math';

extension ListExt<T> on List<T> {
  T random() {
    final index = Random().nextInt(length);
    return elementAt(index);
  }

  Iterable<R> mapIndexed<R>(R Function(T element, int index) convert) sync* {
    var index = 0;
    for (var element in this) {
      yield convert(element, index++);
    }
  }

  void forEachIndexed(void Function(T element, int index) action) {
    for (var index = 0; index < length; index++) {
      action(this[index], index);
    }
  }

  Iterable<T> whereIndexed(bool Function(T element, int index) test) {
    return asMap()
        .entries
        .where((element) => test(element.value, element.key))
        .map((e) => e.value);
  }
}
