func firstDuplicate(a: [Int]) -> Int {
    var uniqueVars = Set<Int>()
    for i in a {
        if !uniqueVars.contains(i) {
            uniqueVars.insert(i)
        } else {
            return i
        }
    }
    return -1
    
}
