import UIKit

// Method : object.methodName()

// Function : functionName()

// In-out parameter
var value = 3
func incrementAndPrint(_ value: inout Int){
    value += 1
    print(value)
}

incrementAndPrint(&value)

// Function as a param

func add(_ a:Int, _ b: Int) -> Int {
    return a + b
}

func subtract( _ a:Int, _ b:Int) -> Int{
    return a - b
}

var function = add
function(4,2)
function = subtract
function(4,2)
func printResult(_ function:(Int, Int)->Int, _ a: Int, _ b: Int){
    let result = function(a,b)
    print(result)
}

printResult(add, 10, 5)
printResult(subtract, 10, 5)

//Optional
// 없을때 nil 로 나타냄

var carName: String?
carName = nil
carName = "Tesla"

// Optional - Advanced

// Forced unwrapping > 억지로 박스를 연다
// Optional binding (if let) > 부드럽게 연다 1
// Optional binding (guard) > 부드럽게 연다 2
// Nil coalescing > 박스를 열어봣더니, 값이 없으면 디폴트 값을 줘보자

carName = nil
//print(carName!)

if let unwrappedCarName = carName {
    print(unwrappedCarName)
} else {
    print("Car Name 없다.")
}


func printParsedInt(from: String){
    guard let parsedInt = Int(from) else {
        print("Int로 컨버팅 안됨.")
        return
    }
    print(parsedInt)
}

printParsedInt(from: "100")

carName = "model 3"
let myCarName: String  = carName ?? "모델 S"

var favFood: String? = "간장게장"

if let unwrappedFavFood = favFood {
    print(unwrappedFavFood)
} else {
    print("최애 음식 없다.")
}

func printNickName(name: String?){
    guard let nickName = name else {
        print("nickname 만들어 보자")
        return
    }
    print(nickName)
}

printNickName(name: nil)

