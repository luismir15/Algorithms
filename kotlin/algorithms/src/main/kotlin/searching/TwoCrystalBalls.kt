package searching

import kotlin.math.sqrt

fun twoCrystalBalls(breaks: BooleanArray): Int {
    val jmpAmount = sqrt(breaks.size.toDouble()).toInt();

    var i = jmpAmount;
    while (i < breaks.size) {
        if (breaks[i]) {
             break;
        }

        i += jmpAmount;
    }

    i -= jmpAmount
    for (j in 0..jmpAmount) {
        if (i < breaks.size && breaks[i]) {
            return i
        }
        i++
    }

    return -1;
}