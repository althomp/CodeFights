func firstNotRepeatingCharacter(s: String) -> Character {
    var firstUnique : Character = "_"
    var repeating = Set<Character>()
    var unique : Array = [Character]()
    
    for i in s.characters {
        if unique.contains(i) {
            unique = unique.filter {$0 != i}
            repeating.insert(i)
        } else if !repeating.contains(i) {
            unique.append(i)
        }
    }
    
    if !unique.isEmpty {
        firstUnique = unique[0]
    }
    
    return firstUnique
}
