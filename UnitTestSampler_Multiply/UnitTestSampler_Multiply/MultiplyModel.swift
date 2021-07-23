//
//  MultiplyModel.swift
//  UnitTestSampler_Multiply
//
//  Created by 岡優志 on 2021/07/23.
//

import Foundation

protocol ActionMultiply {
    func multiply(num1: Int, num2: Int) -> Int
}

class CalculateModel: ActionMultiply {
    private var num1: Int = 0
    private var num2: Int = 0
    /// num1とnum2を乗算した値を返す
    func multiply(num1: Int, num2: Int) -> Int {
        let multiplication = num1 * num2
        return multiplication
    }
}
