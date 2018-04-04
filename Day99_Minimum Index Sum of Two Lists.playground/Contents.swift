//: Playground - noun: a place where people can play

import UIKit

/**
 Minimum Index Sum of Two Lists
 
 Suppose Andy and Doris want to choose a restaurant for dinner, and they both have a list of favorite restaurants represented by strings.
 
 You need to help them find out their common interest with the least list index sum. If there is a choice tie between answers, output all of them with no order requirement. You could assume there always exists an answer.
 
 Example 1:
 Input:
 ["Shogun", "Tapioca Express", "Burger King", "KFC"]
 ["Piatti", "The Grill at Torrey Pines", "Hungry Hunter Steakhouse", "Shogun"]
 
 Output: ["Shogun"]
 
 Explanation: The only restaurant they both like is "Shogun".
 
 Example 2:
 Input:
 ["Shogun", "Tapioca Express", "Burger King", "KFC"]
 ["KFC", "Shogun", "Burger King"]
 
 Output: ["Shogun"]
 
 Explanation: The restaurant they both like and have the least index sum is "Shogun" with index sum 1 (0+1).
 
 Note:
 The length of both lists will be in the range of [1, 1000].
 The length of strings in both lists will be in the range of [1, 30].
 The index is starting from 0 to the list length minus 1.
 No duplicates in both lists.
 **/

class Solution {
    func findRestaurant(_ list1: [String], _ list2: [String]) -> [String] {
        var min = list1.count + list2.count
        var result = [String]()
        for s1 in list1 {
            if list2.index(of: s1) != nil {
                let index1 = list1.index(of: s1)!
                let index2 = list2.index(of: s1)!
                if index1 + index2 < min {
                    min = index1 + index2
                    result.removeAll()
                    result.append(s1)
                } else if index1 + index2 == min {
                    result.append(s1)
                }
            }
        }
        
        return result
    }
}
