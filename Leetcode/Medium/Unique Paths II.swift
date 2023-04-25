class Solution {
    func uniquePathsWithObstacles(_ obstacleGrid: [[Int]]) -> Int {
        var m = obstacleGrid.count
        var n = obstacleGrid[0].count
        var matrix = Array(repeating: Array(repeating: 0, count: n), count: m)

        if obstacleGrid[0][0] == 0 {
            matrix[0][0] = 1
        }
        for i in 1..<m {
            if obstacleGrid[i][0] == 0 {
                matrix[i][0] = matrix[i-1][0]
            }
        }
        for j in 1..<n {
            if obstacleGrid[0][j] == 0 {
                matrix[0][j] = matrix[0][j-1]
            }
        }
        for i in 1..<m {
            for j in 1..<n {
                if obstacleGrid[i][j] == 0 {
                    matrix[i][j] = matrix[i-1][j] + matrix[i][j-1]
                }
            }
        }
        return matrix[m-1][n-1]
    }
}

/*

0 0 0
0 1 0
0 0 0

1 1 1
1 1 0
1 0 0

1 1 1
1 0 1
1 1 2

*/