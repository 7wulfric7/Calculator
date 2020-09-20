//
//  ViewController.swift
//  Calculator
//
//  Created by Deniz Adil on 9/18/20.
//

import UIKit

enum Operation: String {
    case add = "+"
    case subtract = "-"
    case multiply = "*"
    case devide = "/"
    case equal = "="
    case empty = " "
}

class ViewController: UIViewController {
    @IBOutlet weak var resultPrint: UILabel!
    var previousNumber = 0.0
    var screenNumber = 0.0
    var result = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onClick(_ sender: UIButton) {
        resultPrint.text = resultPrint.text! + String(sender.tag)
        previousNumber = Double(resultPrint.text!)!
        screenNumber = Double(resultPrint.text!)!
    }
    
    @IBAction func devide(_ sender: UIButton) {
        calculateOperation(operation: .devide)
        if sender.tag == 13 {
        result = previousNumber / screenNumber
//        result = Double(sender.tag / sender.tag)
        }
    }
    
    @IBAction func multiply(_ sender: UIButton) {
        calculateOperation(operation: .multiply)
        if sender.tag == 12 {
        result = previousNumber * screenNumber
//        result = Double(sender.tag / sender.tag)
        }
    }
    
    @IBAction func substract(_ sender: UIButton) {
        calculateOperation(operation: .subtract)
        if sender.tag == 11 {
        result = previousNumber - screenNumber
//        result = Double(sender.tag / sender.tag)
        }
    }
    
    @IBAction func add(_ sender: UIButton) {
        calculateOperation(operation: .add)
        if sender.tag == 10 {
        result = previousNumber + screenNumber
//        result = Double(sender.tag / sender.tag)
        }
    }
    
    @IBAction func equal(_ sender: UIButton) {
        calculateOperation(operation: .equal)
        if sender.tag == 14 {
        resultPrint.text = "\(result)"
        }
    }
    
    func calculateOperation(operation: Operation) {
        switch operation {
        case .add:
            resultPrint.text = "+"
        case .multiply:
            resultPrint.text = "*"
        case .subtract:
            resultPrint.text = "-"
        case .devide:
            resultPrint.text = "/"
        case .equal:
            resultPrint.text = "="
        case .empty:
            break
        }
    }
}

