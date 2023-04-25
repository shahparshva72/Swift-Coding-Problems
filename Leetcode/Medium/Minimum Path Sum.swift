class Solution {
    func minPathSum(_ grid: [[Int]]) -> Int {
        var matrix = Array(repeating: Array(repeating: 0, count: grid[0].count), count: grid.count)

        matrix[0][0] = grid[0][0]

        for i in 1..<grid.count {
            matrix[i][0] = matrix[i-1][0] + grid[i][0]
        }

        for j in 1..<grid[0].count {
            matrix[0][j] = matrix[0][j-1] + grid[0][j]
        }

        for i in 1..<grid.count {
            for j in 1..<grid[0].count {
                matrix[i][j] = min(matrix[i-1][j], matrix[i][j-1]) + grid[i][j]
            }
        }

        return matrix.last!.last!
    }
}

/*

Method: Count Distance of 0,0 to every i, j, return the last one

1 3 1
1 5 1
4 2 1

0 0 0
0 0 0
0 0 0

1 4 5
2 7 6
6 8 7

*/