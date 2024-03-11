//
//  main.swift
//  AlgorithmStudyWithJS
//
//  Created by 0ofKim on 2023/02/16.
//
import Foundation
//오큰수(17298) - 스택
func q17298() {
    let N: Int = Int(readLine()!)!
    var numbers: [Int] = readLine()!.split(separator: " ").map { Int($0)! }
    var stack: [Int] = []
    
    for n in 0..<N {
        while !stack.isEmpty && numbers[n] > numbers[stack.last!] {
            numbers[stack.popLast()!] = numbers[n]
        }
        stack.append(n)
    }
    
    while !stack.isEmpty {
        numbers[stack.popLast()!] = -1
    }
    
    print(numbers.map { String($0) }.joined(separator: " ") )
}
q17298()

//좋다(1253)
//func q1253() {
//    let n: Int = Int(readLine()!)!
//    var numberList: [Int] = readLine()!.split(separator: " ").map { Int($0)! }
//    numberList.sort()
//    var result: Int = 0
//    
//    for k in 0..<n {
//        var i: Int = 0
//        var j: Int = n - 1
//        let find = numberList[k]
//        
//        while i < j {
//            if numberList[i] + numberList[j] == find {
//                if i != k && j != k {
//                    result += 1
//                    break
//                } else if i == k {
//                    i += 1
//                } else if j == k {
//                    j -= 1
//                }
//            } else if numberList[i] + numberList[j] < find {
//                i += 1
//            } else {
//                j -= 1
//            }
//        }
//    }
//    
//    print(result)
//}
//q1253()

//구간 합 구하기(11659)
//func q11659() {
//    var input: [Int] = readLine()!.split(separator: " ").map { Int($0)! }
//    let (n,m) = (input[0],input[1])
//    let numbers: [Int] = readLine()!.split(separator: " ").map { Int($0)! }
//    var sumNumbers: [Int] = Array(repeating: numbers[0], count: n)
//    
//    for i in 1..<n {
//        sumNumbers[i] = sumNumbers[i-1] + numbers[i]
//    }
//    
//    var result = ""
//    for _ in 0..<m {
//        input = readLine()!.split(separator: " ").map { Int(String($0))! }
//        
//        let high: Int = sumNumbers[input[1]-1]
//        let low: Int = input[0] == 1 ? 0 : sumNumbers[input[0]-2]
//        
//        result += ("\(high - low)\n")
//    }
//    print(result)
//}
//q11659()

//평균 구하기(1546)
//func q1546() {
//    let N = Int(readLine()!)!
//    var numberArray = readLine()!.split(separator: " ").map { Double($0)! }
//    let max = numberArray.max()!
//    var num = 0.0
//    
//    for i in 0..<N {
//        numberArray[i] = numberArray[i] / max * 100
//        num += numberArray[i]
//    }
//    
//    print(num / Double(N))
//}
//q1546()

//단어의 개수 (1152)
//import Foundation
//func solution() {
//    print(readLine()!.split(separator: " ").compactMap { $0 }.count)
//}
//solution()

//바구니 뒤집기 (10811)
//import Foundation
//func solution() {
//    let input = readLine()!.split(separator: " ").compactMap{ Int($0) }
//    var basket: [Int] = (1...input[0]).compactMap { Int($0) }
//    (0..<input[1]).forEach { _ in
//        let input = readLine()!.split(separator: " ").compactMap{ Int($0)! - 1 }
//        basket[input[0]...input[1]].reverse()
//    }
//    print(basket.reduce("") { "\($0)\($1) " })
//}
//solution()

//공 바꾸기 (10813)
//import Foundation
//func solution() {
//    let input = readLine()!.split(separator: " ").compactMap{ Int($0) }
//    var basket: [Int] = (1...input[0]).compactMap { Int($0) }
//    (0..<input[1]).forEach { _ in
//        let input = readLine()!.split(separator: " ").compactMap{ Int($0)! - 1 }
//        let temp = basket[input[0]]
//        basket[input[0]] = basket[input[1]]
//        basket[input[1]] = temp
//    }
//
//    print(basket.reduce("") { "\($0)\($1) " })
//}
//solution()

////공 넣기 (10810)
//import Foundation
//func solution() {
//    let input = readLine()!.split(separator: " ").compactMap{ Int($0) }
//    var basket: [Int] = Array(repeating: 0, count: input[0])
//    (0..<input[1]).forEach { index in
//        let input = readLine()!.split(separator: " ").compactMap{ Int($0) }
//        for index in input[0]...input[1] {
//            basket[index-1] = input[2]
//        }
//    }
//    print(basket.reduce("") { "\($0)\($1) " })
//}
//solution()

//나머지 (3052)
//import Foundation
//func solution() {
//    var numberArray: [Int] = []
//    (0..<10).forEach { _ in
//        let number = Int(readLine()!)! % 42
//        if !numberArray.contains(number) {
//            numberArray.append(number)
//        }
//    }
//    print(numberArray.count)
//}
//solution()

//과제 안 내신 분..? (5597)
//import Foundation
//func solution() {
//    var rollBook = Array(repeating: false, count: 30)
//
//    (0..<28).forEach { _ in
//        let studentNumber = Int(readLine()!)!
//        rollBook[studentNumber-1] = true
//    }
//
//    rollBook.enumerated().forEach { (index, isAttend) in
//        if !isAttend {
//            print(index + 1)
//        }
//    }
//}
//solution()

//// 최댓값 (2562)
//import Foundation
//func solution() {
//    var maxNumber = 0
//    var maxNumberIndex = 0
//    for index in 1...9 {
//        let number = Int(readLine()!)!
//        if number > maxNumber {
//            maxNumber = number
//            maxNumberIndex = index
//        }
//    }
//
//    print(maxNumber)
//    print(maxNumberIndex)
//}
//solution()

// 최소, 최대(10818)
//import Foundation
//func solution() {
//    let numberCount = Int(readLine()!)!
//    let numberArray = readLine()!.split(separator: " ").map { Int($0)! }

    //방법1. 460ms
//    print("\(numberArray.min()!) \(numberArray.max()!)")

    //방법2. 440ms
//    guard numberCount != 1 else {
//        print("\(numberArray[0]) \(numberArray[0])")
//        return
//    }
//
//    var minNumber = Int.max
//    var maxNumber = Int.min
//    for array in numberArray {
//        if array < minNumber { minNumber = array }
//        if array > maxNumber { maxNumber = array }
//    }
//    print("\(minNumber) \(maxNumber)")
//}
//solution()
//import Foundation
//func solution() {
//    let _ = Int(readLine()!)!
//    let numberArray = readLine()!.split(separator: " ").map { Int($0)! }
//
//    print("\(numberArray.min()!) \(numberArray.max()!)")
//}
//solution()

// 개수 세기(10807)
//import Foundation
//func solution() {
//    let _ = readLine()! // number count
//    let numberArray = readLine()!.components(separatedBy: " ").map({String($0)})
//    let findNumber = readLine()!
//
//    let result = numberArray.filter { $0 == findNumber }
//    print(result.count)
//}
//solution()
