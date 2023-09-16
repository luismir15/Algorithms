import 'package:dart/binary_search.dart';
import 'package:dart/twocrystal_balls.dart';
import 'package:test/test.dart';
import 'dart:math';


void main() {
  test('binary search array', () {
    const foo = [1, 3, 4, 69, 71, 81, 90, 99, 420, 1337, 69420];

    expect(bsList(foo, 69), true);
    expect(bsList(foo, 1336), false);
    expect(bsList(foo, 69420), true);
    expect(bsList(foo, 69421), false);
    expect(bsList(foo, 1), true);
    expect(bsList(foo, 0), false);
  }, skip: false);

  test('two crystal balls', () {
    var idx = (Random().nextDouble() * 10000).floor();
    var data = List<bool>.filled(10000, false);

    for (var i = idx; i < 10000; ++i) {
      data[i] = true;
    }

    expect(twoCrystalBalls(data), equals(idx));
    expect(twoCrystalBalls(List<bool>.filled(821, false)), equals(-1));
  }, skip: false);
}
