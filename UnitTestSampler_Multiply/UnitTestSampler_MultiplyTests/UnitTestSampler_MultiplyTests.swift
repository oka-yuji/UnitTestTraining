//
//  UnitTestSampler_MultiplyTests.swift
//  UnitTestSampler_MultiplyTests
//
//  Created by 岡優志 on 2021/07/23.
//

import XCTest
@testable import UnitTestSampler_Multiply

class UnitTestSampler_MultiplyTests: XCTestCase {
    let multiplyModel = MultiplyModel()
    var multiplyViewModel: MultiplyViewModel!
    
    func test_num1とnum2の数字が掛け算されていれば成功() {
        let num1 = 10
        let num2 = 5
        let result = multiplyModel.multiply(num1: num1, num2: num2)
        XCTAssertEqual(50, result)
    }
    
    func test() {
        multiplyViewModel.Value1 = ""
        multiplyViewModel.Value2 = ""
        multiplyViewModel.multiply()
        let result = multiplyViewModel.multiplyValue
        XCTAssertEqual("50", result)
    }
}
