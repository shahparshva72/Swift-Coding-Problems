func totalFruit(_ fruits: [Int]) -> Int {
    var basket = [Int: Int]()
    var counter = 0
    var length = 0
    
    for i in 0..<fruits.count {
        basket[fruits[i], default: 0] += 1

        while basket.keys.count > 2 {
            if basket[fruits[length]] != nil { basket[fruits[length]]! -= 1  }
            if basket[fruits[length]] == 0 { basket[fruits[length]] = nil }

            length += 1
        }

        counter = max(counter, i - length + 1)
    }

    return counter
}

print(totalFruit([0, 1, 2, 2]))