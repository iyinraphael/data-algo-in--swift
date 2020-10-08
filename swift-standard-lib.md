import Foundation

// Array literal
var people = ["Brian", "Stanley", "Ringo"]

/**
 - Swift defines arryays using protocols
 - Array is a SEQUENCE which means that you can iterate through it at least once
 - It is also a COLLECTION which meanbs it can be transversed multiple times,
   non-distructively, and it van be accessed using a subcript operator.
 - Array is also a RandomAccessCollection which makes guarantees about efficiency
 - THe count time is a "cheap" constant time operation written 0(1)
 */


// Order: look up 0(n)
people[0]
people[1]
people[2]


// Insetion is efficient when you add to the end of the array (constant time 0(1))
people.append("Charles")
print(people)


// Insertion new elememts from anywhere aside will force elements to shuffle backwards 0(n)
people.insert("Andy", at: 0)



// Dictionary

var scores: [String: Int] = ["Eric": 9, "LeShawn": 12, "Lui": 10]

/**
 - Dictionaries don't have any guarantees of order,  nor can you insert a specific index
 - They also put a requiremnt on the Key type that it be HASHABLE
 - It is popssible to traverse through the key-values of a dictionary multiple time as COLLECTION
   protocol affords
*/

// Inserting  to a Dictionary is always 0(1)
scores["Lekan"] = 19

// Set

/**
 - A set is a container that holds unique values
 - set hav no notion of order
 */

var bag: Set<String> = ["Candy", "Juice", "Gummy"]
bag.insert("Candy")
print(bag)

//: [Next](@next)

