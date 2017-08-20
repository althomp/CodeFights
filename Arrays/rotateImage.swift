func rotateImage(a: [[Int]]) -> [[Int]] {
    var b = a
    let n = a.count
    
    for i in 0..<n/2 {
        let first = i
        let last = n - 1 - i
        
        for j in first..<last {
            let offset = j - first
            let top = a[first][j]
            
            // left -> top
            b[first][j] = a[last-offset][first]
            
            // bottom -> left
            b[last-offset][first] = a[last][last-offset]
            
            // right -> bottom
            b[last][last-offset] = a[j][last]
            
            // top -> right
            b[j][last] = top
        }
    }
    return b
}
