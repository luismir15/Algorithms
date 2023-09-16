bool bsList(List<int> haystack, int needle) {
  int lo = 0;
  int hi = haystack.length;

  do {
    final m = (lo + (hi - lo) / 2).floor();
    final v = haystack[m];

    if (v == needle) {
      return true;
    } else if (v > needle) {
      hi = m;
    } else {
      lo = m + 1;
    }
  } while (lo < hi);

  return false;
}
