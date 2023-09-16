package searching

import kotlin.math.floor

fun search(haystack: IntArray, needle: Int): Boolean {
  var lo = 0;
  var hi = haystack.size;

  do {
    val m = floor((lo + (hi - lo) / 2).toDouble());
    val v = haystack[m.toInt()];

    if (v == needle) {
      return true;
    } else if (v > needle) {
      hi = m.toInt();
    } else {
      lo = (m + 1).toInt();
    }

  } while (lo < hi);

  return false;
}