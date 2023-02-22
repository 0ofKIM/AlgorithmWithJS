//
//  main.swift
//  AlgorithmStudyWithJS
//
//  Created by 0ofKim on 2023/02/16.
//

//공 넣기 (10810)
import Foundation
func solution() {
    let input = readLine()!.split(separator: " ").compactMap{ Int($0) }
    var basket: [Int] = Array(repeating: 0, count: input[0])
    (0..<input[1]).forEach { index in
        let input = readLine()!.split(separator: " ").compactMap{ Int($0) }
        for index in input[0]...input[1] {
            basket[index-1] = input[2]
        }
    }
    print(basket.reduce("") { "\($0)\($1) " })
}
solution()

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
