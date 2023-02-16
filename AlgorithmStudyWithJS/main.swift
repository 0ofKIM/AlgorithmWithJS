//
//  main.swift
//  AlgorithmStudyWithJS
//
//  Created by 0ofKim on 2023/02/16.
//

// 개수 세기(10807)
import Foundation

func solution() {
    let _ = readLine()! // number count
    let numberArray = readLine()!.components(separatedBy: " ").map({String($0)})
    let findNumber = readLine()!

    let result = numberArray.filter { $0 == findNumber }
    print(result.count)
}

solution()
