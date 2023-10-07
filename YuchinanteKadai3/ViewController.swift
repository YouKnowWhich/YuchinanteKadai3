//
// ViewController.swift
//
// Created by Yuchinante on 2023/10/05
//

import UIKit

class ViewController: UIViewController {
    // テキストフィールドとUIスイッチ、およびラベルのインターフェース要素を宣言
    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!

    @IBOutlet private weak var switch1: UISwitch!
    @IBOutlet private weak var switch2: UISwitch!

    @IBOutlet private weak var label1: UILabel!
    @IBOutlet private weak var label2: UILabel!
    @IBOutlet private weak var resultLabel: UILabel!

    // 計算ボタンがタップされたときに実行されるアクション
    @IBAction private func calculateButton(_ sender: Any) {
        // テキストフィールドの値を数値に変換
        let number1 = Int(textField1.text ?? "") ?? 0
        let number2 = Int(textField2.text ?? "") ?? 0

        // switch1の状態に応じてnumber1の正負を切り替え
        let signedNumber1: Int
        if switch1.isOn {
            signedNumber1 = -number1
        } else {
            signedNumber1 = number1
        }

        // switch2の状態に応じてnumber2の正負を切り替え
        let signedNumber2: Int
        if switch2.isOn {
            signedNumber2 = -number2
        } else {
            signedNumber2 = number2
        }

        // 数値の計算: number1とnumber2を加算
        let result = signedNumber1 + signedNumber2

        // ラベルに計算結果を表示
        label1.text = "\(signedNumber1)"
        label2.text = "\(signedNumber2)"
        resultLabel.text = "\(result)"
    }
}
