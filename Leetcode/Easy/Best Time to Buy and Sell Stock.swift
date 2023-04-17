// https://leetcode.com/problems/best-time-to-buy-and-sell-stock/?envType=study-plan&id=level-1

func maxProfit(_ prices: [Int]) -> Int {
    var prices = prices
    
    var buy = prices[0]
    var profit = 0
    
    for i in 1..<prices.count {
        buy = min(buy, prices[i])
        profit = max(profit, prices[i] - buy)
    }

    return profit
}