import Foundation

class Calculate: AdditionProtocol, MultiplicationProtocol {
    private var nums: [Int]
    
    init(nums: [Int]) {
        self.nums = nums
    }
    
    func sumOfArray() -> Int {
        var result = 0
        for num in nums {
            result += num
        }
        return result
    }
    
    func sorted() -> [Int] {
        return nums.sorted()
    }
    
    func multiplyElementsOfArray() -> Int {
        var result = 1
        for num in nums {
            result *= num
        }
        return result
    }
}

protocol AdditionProtocol {
    func sumOfArray() -> Int
}

protocol MultiplicationProtocol {
    func multiplyElementsOfArray() -> Int
}

extension MultiplicationProtocol {
    func sorted() -> [Int] {
        return Array()
    }
}
