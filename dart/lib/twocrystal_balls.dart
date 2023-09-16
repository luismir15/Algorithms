import 'dart:math';

int twoCrystalBalls(List<bool> breaks) {
  var jmpAmount = sqrt(breaks.length).floor();

  var i = jmpAmount;
  for (; i < breaks.length; i += jmpAmount) {
    if (breaks[i]) {
      break;
    }
  }

  i -= jmpAmount;

  for (var j = 0; j <= jmpAmount && i < breaks.length; ++j, ++i) {
    if (breaks[i]) {
      return i;
    }
  }

  return -1;
}
