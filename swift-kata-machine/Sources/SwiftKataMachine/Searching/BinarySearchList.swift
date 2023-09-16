func binarySearchList(_ haystack: [Int], _ needle: Int) -> Bool {
    var lo = 0
    var hi = haystack.count

    repeat {
        let middle = lo + (hi - lo) / 2
        let value = haystack[middle]

        if value == needle {
            return true
        } else if value > needle {
            hi = middle
        } else {
            lo = middle + 1
        }
    } while lo < hi

    return false
}
