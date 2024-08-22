//
//  ViewController.swift
//  Counter
//
//  Created by 1111 on 14.08.2024.
//

import UIKit

class ViewController: UIViewController {
    
    let date = DateFormatter()
    private var counterNum: Int = 0
    @IBOutlet private weak var buttonMinus: UIButton!
    @IBOutlet private weak var buttonPlus: UIButton!
    @IBOutlet private weak var counter: UILabel!
    @IBOutlet private weak var history: UITextView!
    @IBOutlet private weak var null: UIButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }
    
    @IBAction private func pressButtPlus() {
        
        date.dateFormat = "dd.MM.yyyy, HH:mm:ss"
        
        if counterNum < Int.max {
            counterNum += 1
            counter.text = "Значение счётчика: \(counterNum)"
            history.text += "\n\(date.string(from: Date())): значение изменено на +1"
                
            } else {
                
                counter.text = "Значение счётчика: \(counterNum)"
                
            }
        
    }
    
    @IBAction private func pressButtMinus() {
        
        date.dateFormat = "dd.MM.yyyy, HH:mm:ss"
        
        if counterNum == 0 {
            
            counter.text = "\(counterNum)"
            history.text += "\n\(date.string(from: Date())): попытка уменьшить значение счётчика ниже 0"
            
        } else {
            
            if counterNum == 1 {
                
                counterNum -= 1
                counter.text = "\(counterNum)"
                history.text += "\n\(date.string(from: Date())): значение изменено на -1"
                
            } else {
                
                counterNum -= 1
                counter.text = "Значение счётчика: \(counterNum)"
                history.text += "\n\(date.string(from: Date())): значение изменено на -1"
                
            }
        }
    }
        
    @IBAction private func makeNull() {
            
        date.dateFormat = "dd.MM.yyyy, HH:mm:ss"
        counterNum = 0
        counter.text = "\(counterNum)"
        history.text += "\n\(date.string(from: Date())): значение сброшено"
        
        }
        
    }
    
