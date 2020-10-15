import UIKit

var str = "Hello, playground"
/*
 Swift提供Arrays、Sets 和 Dictionaries三种基本的集合类型用来存储集合数据。
 Swift语言中的Arrays、Sets和Dictionaries中存储的数据值类型必须明确。
 */

// Array
var someInts = [Int]()
someInts = [20,3,40,5,60]

///Map
someInts = [20,3,40,5,60]
let result1 = someInts.map { $0 + 2 }
print(result1) ///< [22, 5, 42, 7, 62]
print(someInts) ///< [20, 3, 40, 5, 60]

///Filter
someInts = [20,3,40,5,60]
let result2 = someInts.filter { $0%2 == 0 }
print(result2) ///< [20, 40, 60]
print(someInts) ///< [20, 3, 40, 5, 60]

///Sort
someInts = [20,3,40,5,60]
let result3: () = someInts.sort()
print(result3) ///< ()
print(someInts) ///< [3, 5, 20, 40, 60]

someInts = [20,3,40,5,60]
let result4: () = someInts.sort { $0 > $1 }
print(result4) ///< ()
print(someInts) ///< [60, 40, 20, 5, 3]

///Sorted (返回新数组)
someInts = [20,3,40,5,60]
let result5 = someInts.sorted()
print(result5) ///< [3, 5, 20, 40, 60]
print(someInts) ///< [20, 3, 40, 5, 60]

someInts = [20,3,40,5,60]
let result6 = someInts.sorted { $0 > $1 }
print(result6) ///< [60, 40, 20, 5, 3]
print(someInts) ///< [20, 3, 40, 5, 60]

///RemoveAll
someInts = [20,3,40,5,60]
let result7: () = someInts.removeAll { $0%2 == 0 }
print(result7) ///< ()
print(someInts) ///< [3, 5]

///prefix — 从头取元素直到条件不成立
someInts = [20,3,40,5,60]
let result8 = someInts.prefix{ $0>10 }
print(result8) ///< [20]
print(someInts) ///< [20, 3, 40, 5, 60]

///drop — 当条件为真时，丢弃元素；一旦不为真，返回其余的元素
someInts = [20,3,40,5,60]
let result9 = someInts.drop{ $0>10 }
print(result9) ///< [3, 40, 5, 60]
print(someInts) ///< [20, 3, 40, 5, 60]

///split — “把所有元素分成多个数组
someInts = [20,3,40,5,60]
let result10 = someInts.split {
    $0 == 3
}
print(result10) ///< [[20], [40, 5, 60]]
print(someInts) ///< [20, 3, 40, 5, 60]







var threeeDoubles = Array(repeating: 0.0, count: 3)
var anotherThreeDoubles = Array(repeating: 2.5, count: 3)

var sixDoubles = threeeDoubles + anotherThreeDoubles

var shoppingList: [String] = ["Eggs", "Milk"]
var shoppingList1 = ["Eggs" ,"Milk"]
var arr:[Any] = ["1", 2]
print("The shopping list contains \(shoppingList.count) items.")

if shoppingList.isEmpty {
    print("The shopping list is empty.")
} else {
    print("The shopping list is not empty")
}

shoppingList.append("Flour")

shoppingList += ["Baking Powder"];
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
var firstItem = shoppingList[0]

shoppingList[0] = "Six eggs"

shoppingList[4...6] = ["Banans", "Apples"]
// 不可以用下标访问的形式去在数组尾部添加新项，

shoppingList.insert("Maple Syrup", at: 0)

let mapleSyrup = shoppingList.remove(at: 0)
firstItem = shoppingList[0]

let apples = shoppingList.removeLast();

for item in shoppingList {
    print(item)
}

for (index, value) in shoppingList.enumerated() {
    print("Item \(String(index + 1)): \(value)")
}

// Sets
/*
 集合类型的哈希值，一个类型为了存储在集合中，该类型必须是可哈希化的----也就是说，该类型必须提供一个方法来计算它的哈希值，
 一个哈希值是Int类型的，相等的对象哈希值必须相同，比如a==b，因此必须a.hashValue == b.hashValue.
 Swift的所有基本类型（比如String，Int、Double和Bool）默认都是可哈希化的，可以作为集合的值得类型或者字典的键的类型。没有关联值得枚举成员值默认也是可哈希化的。
 */

var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items.")

letters.insert("a")
letters = []

var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
var favoriteGenres1: Set = ["Rock", "Classical", "Hip hop"]

if favoriteGenres.isEmpty {
    print("As far as mucis goes , I am not picky.")
}

favoriteGenres.insert("Jazz")

if let removedGenre = favoriteGenres.remove("Rock") {
    print("\(removedGenre) ? I am over it")
} else {
    print("I never much cared for that.")
}

if favoriteGenres.contains("Funk") {
    print("I get up on the good foot.")
} else {
    print("It is too funky in here.")
}

for genre in favoriteGenres {
    print("\(genre)")
}
for genre in favoriteGenres.sorted() {
    print("\(genre)")
}

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sorted()
oddDigits.intersection(evenDigits).sorted()
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()

let houseAnimals: Set = ["1", "2"];
let farmAnimals: Set = ["1", "2", "3", "4", "5"]
let cityAnimals: Set = ["6", "7"]

houseAnimals.isSubset(of: farmAnimals)
farmAnimals.isSuperset(of: houseAnimals)
farmAnimals.isDisjoint(with: cityAnimals)

// 字典 注意： 一个字典的key类型必须遵循hashable协议， 就像Set的值类型
var namesOfIntegers = [Int: String]()
namesOfIntegers[16] = "sixteen"
namesOfIntegers = [:]

var airports:[String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

var airports1 = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

print("The dictionary of airports contains \(airports.count) items. ")

if airports.isEmpty {
    print("The airports dictionary is empty. ")
} else {
    print("The airports dictionary is not empty. ")
}

airports["LHR"] = "London"
airports["LHR"] = "London Heathrow"

if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
    print("The old value for DUB was \(oldValue) .")
}

if let airportName = airports["DUB"] {
    print("The name of the airport is \(airportName)")
} else {
    print("The airport is not in the airports dictionary.")
}

airports["APL"] = "Apple Internation"
airports["APL"] = nil

if let removedValue = airports.removeValue(forKey: "DUB") {
    print("The removed airport is name is \(removedValue)")
} else {
    print("The airports dictionary does not contain a value for DUB")
}

for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}

for airportCode in airports.keys {
    print("Airport code: \(airportCode)")
}

for airportName in airports.values {
    print("Airport name: \(airportName)")
}

let airportCodes = [String](airports.keys)
let airportNames = [String](airports.values)


