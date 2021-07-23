//
//  MultiplyViewModel.swift
//  UnitTestSampler_Multiply
//
//  Created by 岡優志 on 2021/07/23.
//

import SwiftUI
class MultiplyViewModel: ObservableObject {
    // DI的な処理(疎結合)
    private let calculate: ActionMultiply
    init(calculate: ActionMultiply) {
        self.calculate = calculate
    }
    // Viewとバインディング変数
    @Published var fetchValue1 = ""
    @Published var fetchValue2 = ""
    @Published var multiplyValue = ""
    // fetchValue1とfetchValue2を乗算した値をmultiplyValueに返す
    func multiply() {
        let num1 = Int(fetchValue1) ?? 0
        let num2 = Int(fetchValue2) ?? 0
        let result: Int = calculate.multiply(num1: num1, num2: num2)
        multiplyValue = String(result)
    }
}
