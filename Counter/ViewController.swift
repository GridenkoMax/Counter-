//
//  ViewController.swift
//  Counter
//
//  Created by Maxim Gridenko on 15.07.2024.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    
    
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var historyTextView: UITextView!
    
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterLabel.text = "Значение счётчика:\(count)"
        historyTextView.text = "История изменений: \n"
        historyTextView.isEditable = false
    }
    
    
    
    @IBAction func plusButtonAction(_ sender: Any) {
        count += 1
        counterLabel.text = "Значение счётчика:\(count)"
        historyTextView.text += "\(Date().formatted(date: .numeric, time: .standard)): значение изменено на +1 \n"
    }
    
    @IBAction func minusButtonAction(_ sender: Any) {
        if count > 0 {
            count -= 1
            counterLabel.text = "Значение счётчика:\(count)"
            historyTextView.text += "\(Date().formatted(date: .numeric, time: .standard)) : значение изменено на -1 \n "
        } else {
            historyTextView.text += "\(Date().formatted(date: .numeric, time: .standard)) : попытка уменьшить значение счётчика ниже 0 \n "
        }
    }
        @IBAction func resetButtonAction(_ sender: Any) {
            count = 0
            counterLabel.text = "Значение счётчика:\(count)"
            historyTextView.text += "\(Date().formatted(date: .numeric, time: .standard)) : : значение сброшено \n "
        }
    }
    

