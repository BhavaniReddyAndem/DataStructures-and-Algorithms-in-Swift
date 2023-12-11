import UIKit

func getFrequencies(_ v: [Int]) -> [Int] {   // Function takes an array of integers as input and returns an array of integers as output
    var mp = [Int: Int]() // Lets take a dictionary to store the element and its frequency
    var ans = [Int]() // Array to store the result

    for num in v {
        mp[num, default: 0] += 1    // Loop through array v and increase the frequency by 1 whenver element encounters
    }

    var maxFreq = Int.min     // Initialise with the minimum possible value for int  to perform comparison
    var minFreq = Int.max     // Initialise with the maximum possible value for int to perform comparison

    for (_, freq) in mp {
        maxFreq = max(maxFreq, freq)   //Loop through dictionary and maxFreq update whenevr the frequency is greater than Int.min
        minFreq = min(minFreq, freq)   //Loop through dictionary and minFreq update whenevr the frequency is smaller than Int.max
    }

    for (key, freq) in mp {
        if freq == maxFreq {
            ans.append(key)   // store the element with max frequency in array ans
            break
        }
    }

    for (key, freq) in mp {
        if freq == minFreq {
            ans.append(key)   // store the element with min frequency in array ans
            break
        }
    }

    return ans
}

// Example usage:
let input = [1, 2, 3, 1, 1, 4]
let result = getFrequencies(input)
print(result)
