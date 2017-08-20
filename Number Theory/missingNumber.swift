func missingNumber(arr: [Int]) -> Int {
    var prevNum : Int? = nil
    
    var numbers = arr.sorted()
    for i in numbers {
        if let prev = prevNum {
            if i-prev > 1 {
                return prev+1
            }
        }
        prevNum = i
    }
    
    if numbers[0] == 0 {
        return numbers[numbers.count-1]+1
    }
    return numbers[0]-1
}
