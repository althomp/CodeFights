func containsDuplicates(a: [Int]) -> Bool {
    var seen = Set<Int>()
    for i in a {
        if seen.contains(i) {
            return true
        } 
        seen.insert(i)
    }
    
    return false
}
