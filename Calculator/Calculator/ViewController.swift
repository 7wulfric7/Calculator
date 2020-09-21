//
//  ViewController.swift
//  Calculator
//
//  Created by Deniz Adil on 9/18/20.
//

import UIKit
import AVFoundation

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
    var player: AVAudioPlayer?
    var runningNumber = ""
    var leftValueString = ""
    var rightNumberString = ""
    var currentOperation: Operation = .empty
    var result = ""
//    var previousNumber = 0.0
//    var screenNumber = 0.0
//    var result = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabel()
        preparePlayer()
        // Do any additional setup after loading the view.
    }
    func preparePlayer() {
//        let path = Bundle.main.path(forResource: "btn.wav", ofType:nil)!
        guard let url = Bundle.main.url(forResource: "btn", withExtension: "wav") else {
            return
        }
        do {
        player = try AVAudioPlayer(contentsOf: url)
            player?.prepareToPlay()
        } catch (let error) {
            print(error.localizedDescription)
        }
        
    }
    func setupLabel() {
        resultPrint.font = UIFont(name: "Minecraft", size: 30)
    }
    @IBAction func onClick(_ sender: UIButton) {
        player?.play()
        let number = sender.tag
        runningNumber = "\(number)"
        resultPrint.text = "\(number)"
//        resultPrint.text = resultPrint.text! + String(sender.tag)
       
//        previousNumber = Double(resultPrint.text!)!
//        screenNumber = Double(resultPrint.text!)!
    }
    
    @IBAction func devide(_ sender: UIButton) {
        calculateOperation(operation: .devide)
//        if sender.tag == 13 {
//        result = previousNumber / screenNumber
//        result = Double(sender.tag / sender.tag)
        }
    
    
    @IBAction func multiply(_ sender: UIButton) {
        calculateOperation(operation: .multiply)
//        if sender.tag == 12 {
//        result = previousNumber * screenNumber
//        result = Double(sender.tag / sender.tag)
        }
    
    
    @IBAction func substract(_ sender: UIButton) {
        calculateOperation(operation: .subtract)
//        if sender.tag == 11 {
//        result = previousNumber - screenNumber
//        result = Double(sender.tag / sender.tag)
        }
    
    
    @IBAction func add(_ sender: UIButton) {
        calculateOperation(operation: .add)
//        if sender.tag == 10 {
//            resultPrint.text = "+"
//        result = Double(sender.tag / sender.tag)
        }
    
    
    @IBAction func equal(_ sender: UIButton) {
        calculateOperation(operation: .equal)
//        if sender.tag == 14 {
//        resultPrint.text = "\(result)"
        }
    
    
    func calculateOperation(operation: Operation) {
        player?.play()
        if currentOperation == .empty {
            leftValueString = runningNumber
                      runningNumber = ""
                        currentOperation = operation
        } else {
            if runningNumber != "" {
                // Do the math
                rightNumberString = runningNumber
                runningNumber = ""
                
                if currentOperation == .add {
                result = "\(Double(leftValueString)! + Double(rightNumberString)!)"
                } else if currentOperation == .multiply {
                    result = "\(Double(leftValueString)! * Double(rightNumberString)!)"
                } else if currentOperation == .subtract {
                    result = "\(Double(leftValueString)! - Double(rightNumberString)!)"
                } else if currentOperation == .devide {
                    result = "\(Double(leftValueString)! / Double(rightNumberString)!)"
                }
                leftValueString = result
                resultPrint.text = result
            }
                currentOperation = operation
//        switch currentOperation {
//        case .add:
//            break
//        case .multiply:
//            resultPrint.text = "*"
//        case .subtract:
//            resultPrint.text = "-"
//        case .devide:
//            resultPrint.text = "/"
//        case .equal:
//            resultPrint.text = "="
//        case .empty:
////            Ova se povikuva sekogas koga prv pat se klika na operacija
//
//            break
        }
    }
}
