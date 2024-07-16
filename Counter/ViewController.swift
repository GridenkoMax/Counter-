//
//  ViewController.swift
//  Counter
//
//  Created by Maxim Gridenko on 15.07.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private var count = 0
    
    @IBOutlet private weak var counterLabel: UILabel!
    @IBOutlet private weak var historyTextView: UITextView!
    
    @IBOutlet private weak var resetButton: UIButton!
    @IBOutlet private weak var plusButton: UIButton!
    @IBOutlet private weak var minusButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterLabel.text = "Значение счётчика:\(count)"
        historyTextView.text = "История изменений: \n"
        historyTextView.isEditable = false
    }
    
    @IBAction private func plusButtonAction(_ sender: Any) {
        count += 1
        counterLabel.text = "Значение счётчика:\(count)"
        historyTextView.text += "\(Date().formatted(date: .numeric, time: .standard)) : значение изменено на +1 \n"
    }
    
    @IBAction private func minusButtonAction(_ sender: Any) {
        if count > 0 {
            count -= 1
            counterLabel.text = "Значение счётчика:\(count)"
            historyTextView.text += "\(Date().formatted(date: .numeric, time: .standard)) : значение изменено на -1 \n "
        } else {
            historyTextView.text += "\(Date().formatted(date: .numeric, time: .standard)) : попытка уменьшить значение счётчика ниже 0 \n "
        }
    }
    @IBAction private func resetButtonAction(_ sender: Any) {
        count = 0
        counterLabel.text = "Значение счётчика:\(count)"
        historyTextView.text += "\(Date().formatted(date: .numeric, time: .standard)) : значение сброшено \n "
    }
}


