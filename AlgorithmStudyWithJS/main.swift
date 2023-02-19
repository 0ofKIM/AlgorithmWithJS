//
//  main.swift
//  AlgorithmStudyWithJS
//
//  Created by 0ofKim on 2023/02/16.
//

// 최댓값 (2562)
import Foundation
func solution() {
    var maxNumber = 0
    var maxNumberIndex = 0
    for index in 1...9 {
        let number = Int(readLine()!)!
        if number > maxNumber {
            maxNumber = number
            maxNumberIndex = index
        }
    }

    print(maxNumber)
    print(maxNumberIndex)
}
solution()

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
