//
//  UnitTestSampler_MultiplyTests.swift
//  UnitTestSampler_MultiplyTests
//
//  Created by 岡優志 on 2021/07/23.
//

import XCTest
@testable import UnitTestSampler_Multiply

class UnitTestSampler_MultiplyTests: XCTestCase {
    func test_num1とnum2の引数が掛け算されていれば成功() {
        //前処理
        let multiplyModel = MultiplyModel()
        //実行
        let result = multiplyModel.multiply(num1: 10, num2: 5)
        //検証
        XCTAssertEqual(50, result)
        //後処理
    }
    
    struct Stub: MultiplyInterface{
        func multiply(num1: Int, num2: Int) -> Int {
            return num1 * num2
        }
    }
    
    func test_数字以外入力された場合は０を表示() {
        let multiplyViewModel = MultiplyViewModel(calculate: Stub())
        multiplyViewModel.Value1 = "a"
        multiplyViewModel.Value2 = "10"
        multiplyViewModel.multiply()
        let result = multiplyViewModel.multiplyValue
        XCTAssertEqual("0", result)
    }
}
