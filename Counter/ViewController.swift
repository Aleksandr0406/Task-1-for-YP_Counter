//
//  ViewController.swift
//  Counter
//
//  Created by 1111 on 14.08.2024.
//

import UIKit

class ViewController: UIViewController {

    var counterNum: Int = 0
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var counter: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pressButt() {
       
        if counterNum < Int.max {
            
            counterNum += 1
            counter.text = "Значение счётчика: \(counterNum)"
            
        } else {
            
            counter.text = "Значение счётчика: \(counterNum)"
            
        }
        
    }
    
}

