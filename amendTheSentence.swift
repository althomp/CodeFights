func amendTheSentence(s: String) -> String {
    let upperCase = CharacterSet.uppercaseLetters
    
    var returnString = ""
    
    for char in s.unicodeScalars {
        if upperCase.contains(char) {
            if !returnString.isEmpty {
                returnString += " "
            }
        }
        returnString += String(char).lowercased()
    }
    
    return returnString
}
