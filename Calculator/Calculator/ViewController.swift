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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onClick(_ sender: UIButton) {
        
    }
    
    @IBAction func devide(_ sender: UIButton) {
        calculateOperation(operation: .devide)
    }
    
    @IBAction func multiply(_ sender: UIButton) {
        calculateOperation(operation: .multiply)
    }
    
    @IBAction func substract(_ sender: UIButton) {
        calculateOperation(operation: .subtract)
    }
    
    @IBAction func add(_ sender: UIButton) {
        calculateOperation(operation: .add)
    }
    
    @IBAction func equal(_ sender: UIButton) {
        calculateOperation(operation: .equal)
    }
    
    func calculateOperation(operation: Operation) {
        switch operation {
        case .add:
            break
        case .multiply:
            break
        case .subtract:
            break
        case .devide:
            break
        case .equal:
            break
        case .empty:
            break
        }
    }
}

