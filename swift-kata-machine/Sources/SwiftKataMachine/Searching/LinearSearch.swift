func linearSearch(_ haystack: [Int], _ needle: Int) -> Bool {
    for idx in haystack {
        if idx == needle {
            return true
        }
    }
    return false
}
