func sudoku2(grid: [[Character]]) -> Bool {
    let emptyChar : Character = "."
    var numbers = Set<Character>()
    
    // check rows for repeats
    for row in grid {
        numbers.removeAll()
        for char in row {
            if char != emptyChar, numbers.contains(char) {
                return false
            }
            numbers.insert(char)
        }
    }
    
    // check columns for repeats
    for i in 0..<9 {
        numbers.removeAll()
        for row in grid {
            let char = row[i]
            if char != emptyChar, numbers.contains(char) {
                return false
            } 
            numbers.insert(char)
        }
    }
    
    // check squares for repeats
    for m in 0..<3 {
        for n in 0..<3 {
            let rowStart = m*3
            let colStart = n*3
            numbers.removeAll()
            for i in rowStart..<(rowStart + 3) {
                for j in colStart..<(colStart + 3) {
                    let char = grid[i][j]
                    if char != emptyChar, numbers.contains(char) {                        return false
                    }
                    numbers.insert(char)
                }
            }
        }
    }
    
    return true
}
