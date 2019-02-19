import UIKit

// LeetCode
class Solution {
    // 1. Two Sum
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        for i in 0 ..< nums.count {
            let num = nums[i]
            let otherPart = target - num
            if let otherIndex = dict[otherPart] {
                return [otherIndex, i]
            } else {
                dict[num] = i
            }
        }
        return []
    }
    // 7. Reverse Integer
    func reverse(_ x: Int) -> Int {
        var tempX = x
        var rev = 0
        while tempX != 0 {
            rev = rev * 10 + tempX % 10
            tempX = tempX / 10
        }
        if rev > Int32.max || rev < Int32.min {
            return 0
        } else {
            return rev
        }
    }
    // 9. Palindrome Number
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 {
            return false
        } else {
            var tempX = x
            var rev = 0
            while tempX != 0 {
                rev = rev * 10 + tempX % 10
                tempX = tempX / 10
            }
            return x == rev
        }
    }
    // 13. Roman to Integer
    func romanToInt(_ s: String) -> Int {
        let dict: [Character: Int] = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
        for i in 0 ..< s.count {
            let targetIndex = s.index(s.startIndex, offsetBy: i)
            let c = s[targetIndex]
            print(c)
        }
        return 0
    }
}

let solution = Solution()
print(solution.twoSum([2, 7, 11, 15], 9))
print(solution.reverse(-1270))
print(solution.isPalindrome(98789))
print(solution.romanToInt("MCMXCIV"))
