//
//  MultiplyView.swift
//  UnitTestSampler_Multiply
//
//  Created by 岡優志 on 2021/07/23.
//

import SwiftUI

struct MultiplyView: View {
    @ObservedObject private var calculateViewModel = MultiplyViewModel(calculate: CalculateModel())
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            // タイトル、説明文
            Text("整数を入力するとn倍になって値を返すよ！")
            // 整数を入力するTextField
            VStack(alignment: .leading, spacing: 0.0) {
                Text("下記に整数を入力して下さい")
                TextField("exmple: 10", text: $calculateViewModel.fetchValue1)
                    .modifier(TextFieldModifire())
            }
            // 倍率を入力するTextField
            VStack(alignment: .leading, spacing: 0.0) {
                Text("倍率を整数で入力して下さい")
                TextField("exmple: 5", text: $calculateViewModel.fetchValue2)
                    .modifier(TextFieldModifire())
            }
            // ボタンを押すと計算してTextへ出力する
            VStack(alignment: .leading, spacing: 0.0) {
                Button(action: {
                    calculateViewModel.multiply()
                }, label: {
                    Text("計算スタート")
                        .padding(.vertical)
                })
                Text("合計 ＝"+"\(calculateViewModel.multiplyValue == "" ? "0" : calculateViewModel.multiplyValue)"+"です。")
            }
        }
        .padding()
    }
}
struct MultiplyView_Previews: PreviewProvider {
    static var previews: some View {
        MultiplyView()
    }
}

struct TextFieldModifire: ViewModifier {
    func body(content: Content) -> some View {
        content
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .keyboardType(.numberPad)
    }
}
