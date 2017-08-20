func simplifyRational(numerator: Int, denominator: Int) -> [Int] {
    func gcd(_ a: Int, _ b: Int) -> Int {
        let r = a % b
        if r != 0 {
            return gcd(b, r)
        } else {
            return b
        }
    }
    
    var numerator = numerator
    var denominator = denominator
    
    var isNeg = false
    if (numerator<0 && denominator>0) || (numerator>=0 && denominator<0) {
        isNeg = true
    }
    
    numerator = abs(numerator)
    denominator = abs(denominator)
    
    let i = gcd(numerator, denominator)
    numerator = numerator / i
    denominator = denominator / i
    
    var simplify = [numerator, denominator]
    if isNeg {
        simplify[0] = 0-simplify[0]
    }
    return simplify
}
