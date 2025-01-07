import Foundation

// https://www.hackerrank.com/challenges/apple-and-orange/problem?isFullScreen=true

func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
    let houseRange = s...t
    
    let absoluteApplePositions = apples.map { $0 + a}
    var absoluteOrangePositions = oranges.map { $0 + b}
    
    let appleCount = absoluteApplePositions.reduce(0) { count, apple in
        count + (houseRange.contains(apple) ? 1 : 0)
    }
    
    let orangeCount = absoluteOrangePositions.reduce(0) { count, orange in
        count + (houseRange.contains(orange) ? 1 : 0)
    }
    
    print(appleCount)
    print(orangeCount)
}

countApplesAndOranges(s: 7, t: 11, a: 5, b: 15, apples: [-2,2,1], oranges: [5, -6])
