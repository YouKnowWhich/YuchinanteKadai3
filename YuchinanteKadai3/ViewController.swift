//
//  ViewController.swift
//  
//  
//  Created by Yuchinante on 2023/10/05
//  
//

import UIKit

class ViewController: UIViewController {
    // テキストフィールドとUIスイッチ、およびラベルのインターフェース要素を宣言
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!

    @IBOutlet weak var switch1: UISwitch!
    @IBOutlet weak var switch2: UISwitch!

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var resultLabel: UILabel!

    // 計算ボタンがタップされたときに実行されるアクション
    @IBAction func calculateButton(_ sender: Any) {
        // テキストフィールドの値を数値に変換
        var number1 = Int(textField1.text ?? "") ?? 0
        var number2 = Int(textField2.text ?? "") ?? 0

        // switch1の状態に応じてnumber1の正負を切り替え
        if switch1.isOn {
            number1 = -number1
        }

        // switch2の状態に応じてnumber2の正負を切り替え
        if switch2.isOn {
            number2 = -number2
        }

        // 数値の計算: number1とnumber2を加算
        let result = number1 + number2

        // ラベルに計算結果を表示
        label1.text = "\(number1)"
        label2.text = "\(number2)"
        resultLabel.text = "\(result)"
    }
}
