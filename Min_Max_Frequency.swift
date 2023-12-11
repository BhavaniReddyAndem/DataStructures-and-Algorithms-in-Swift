import UIKit

func getFrequencies(_ v: [Int]) -> [Int] {
    var mp = [Int: Int]()
    var ans = [Int]()

    for num in v {
        mp[num, default: 0] += 1
    }

    var maxFreq = Int.min
    var minFreq = Int.max

    for (_, freq) in mp {
        maxFreq = max(maxFreq, freq)
        minFreq = min(minFreq, freq)
    }

    for (key, freq) in mp {
        if freq == maxFreq {
            ans.append(key)
            break
        }
    }

    for (key, freq) in mp {
        if freq == minFreq {
            ans.append(key)
            break
        }
    }

    return ans
}

// Example usage:
let input = [1, 2, 3, 1, 1, 4]
let result = getFrequencies(input)
print(result)
