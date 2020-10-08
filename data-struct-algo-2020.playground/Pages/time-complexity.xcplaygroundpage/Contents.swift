//: [Previous](@previous)

import Foundation

/**
 # Constant Time
        
 A constant time algorithm is one that has the same running time regardless of the size of the input.
 
 - Parameter names: the size of the names array has no effect on the running time of this function.
                    Whether the input has 10 items or 10 million items, this  fucntion only checks the first element of the array.
 
 # Big O notation
 
 Programmers use it to represent various magnitude of time complexity. The Big O notation for constant time is O(1)
            
 */

func checkFirst(names: [String]) {
    if let first = names.first {
        print(first)
    } else {
        print("no names")
    }
}


/**
 # Linear Time
 
 This function prints out all the names in a String array. As the input array increase in size,
 the number of iterations that the *for* loop makes is increased by the same amount.
 
 The Big O notation is O(n)
 */

func printNames(names: [String]) {
  for name in names {
    print(name)
  }
}


/**
 # Quadratic time
 
 More commonly referred to as n squared, this time complexity refers ti an algorithm that makse time
 proportional to the square of the input size.
 
 This function prints out all the names in the array for every name in the array. if you have an arrya of 10 pieces
 of data, it will print the full list of 10 names 10 times. That's 100 print statements
 
 The Big O notation is O(n*2)
 
 */
func printNames2(names: [String]) {
    for _ in names {
        for name in names{
            print(name)
        }
    }
}

func multi() {
    for x in 0..<10 {
        for y in 0..<10 {
            print(x, y)
        }
    }
}

printNames2(names: ["Ali", "Simbi", "Lola", "Seun", "Femi", "Goke", "Sumbo", "Jide", "Gbenga", "John"])


/**
 # Logarithmic Time
 
 Algorithms that belong to this category of time complexity are ones that can leverage some
 shortcuts by making some assumptions about the input data. For instance,
 if you had a sorted array of integers, what is the quickest way to find if a particular value exists?
 
 The Big O notation for logarithmic time complexity is O(log n).
 */

func naiveContains(_ value: Int, in array: [Int]) -> Bool {
    
    guard !array.isEmpty else { return false}
    let middleIndex = array.count / 2
    
    if value <= array[middleIndex] {
        for index in 0...middleIndex {
            if array[index] == value {
                return true
            }
        }
    } else {
        for index in middleIndex..<array.count {
            if array[index] == value {
                return true
            }
        }
    }
    return false
}

//: [next] (@next)
