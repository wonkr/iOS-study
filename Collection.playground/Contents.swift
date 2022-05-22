import UIKit

// 5/21/22 Won

// Array
// Dictionary
// Set
// Closure

// 1) Array

var evenNumbers: [Int] = [2, 4, 6, 8]
var evenNumbers2: Array<Int> = []

evenNumbers.append(10)
evenNumbers += [12, 14, 16]
evenNumbers.append(contentsOf: [18,20])

let isEmpty = evenNumbers.isEmpty
evenNumbers2.isEmpty

evenNumbers.count

let firstItem = evenNumbers2.first

if let firstElement = evenNumbers.first{
    print("--> first item is:\(firstElement)")
}

evenNumbers.min()
evenNumbers.max()

evenNumbers[1]

let firstThree = evenNumbers[0...2]

evenNumbers.contains(3)
evenNumbers.insert(0, at:0)
//evenNumbers.removeAll()
evenNumbers.remove(at: 0)
evenNumbers

evenNumbers[0] = -2
evenNumbers

evenNumbers[0...2] = [-2, 0, 2]
evenNumbers

evenNumbers.swapAt(0, 9)

//for num in evenNumbers{
//    print(num)
//}

for (index, num) in evenNumbers.enumerated(){
    print("idx: \(index), value: \(num)")
}

// 2) Dictionary (key: value)

var scoreDic: [String: Int] = ["Jason":80, "Jay":95, "Jake":90]

scoreDic["Jason"]
scoreDic["Jerry"]

if let score = scoreDic["Jay"]{
    score
}
//scoreDic = [:]
scoreDic.isEmpty
scoreDic.count

// value update
scoreDic["Jason"] = 99
scoreDic

// add
scoreDic["Jack"] = 100
scoreDic

// remove
scoreDic["Jack"] = nil
scoreDic

// for loop

for (name, score) in scoreDic{
    print("\(name), \(score)")
}

for key in scoreDic.keys{
    print(key)
}

// 1. 이름, 직업, 도시 에 대해서 본인의 딕셔너리 만들기
// 2. 여기서 도시를 부산으로 업데이트하기
// 3. 딕셔너리를 받아서 이름과 도시 프린트하는 함수 만들기

var profile: [String: String] = ["이름":"원경록", "직업":"학생", "도시":"시라큐스"]

profile["도시"] = "부산"

func printNameAndCity(dic: [String:String]){
    if let name = dic["이름"], let city = dic["도시"] {
        print("이름: \(name)")
        print("도시: \(city)")
    }
    else{
        print("--> Cannot find")
    }
}

printNameAndCity(dic: profile)

// 3) set
var someSet: Set<Int> = [1, 2, 3, 1, 2]

var multiplyClosure: (Int, Int) -> Int = { a, b in
    return a*b
}

let result = multiplyClosure(4, 2)

func operateTwoNum(a: Int, b:Int, operation: (Int, Int)-> Int) -> Int {
    let result = operation(a, b)
    return result
}

operateTwoNum(a:4, b: 2, operation: multiplyClosure)

var addClosure: (Int, Int) -> Int = { a, b in
    return a+b
}

operateTwoNum(a: 2, b: 4, operation: addClosure)
operateTwoNum(a: 4, b: 2, operation: { a, b in
    return a/b
})


let voidClosure: () -> Void = {
    print("iOS 개발자 짱")
}
var count = 0

let increment = {
    count += 1
}
increment()
increment()
voidClosure()
count

// 4) Closure
let choSimpleClosure = {
    
}
choSimpleClosure()

let simpleClosure = {
    print("Hello Closure")
}
simpleClosure()

let simpleClosure2: (String) -> Void = { name in
    print("나의 이름은 \(name) 입니다. ")
}
simpleClosure2("경록")

let simpleClosure3: (String) -> String = { name in
    let message = "iOS 개발 만세, \(name)님 화이팅!"
    return message
}

let message = simpleClosure3("경록")
print(message)

func someSimpleFunction(choSimpleClosure: () -> Void){
    print("함수에서 호출이 되었어요")
    choSimpleClosure()
}

someSimpleFunction (choSimpleClosure: {
    print("헬로 코로나 from closure")
})

