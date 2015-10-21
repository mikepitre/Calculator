//
//  ViewController.swift
//  Calculator
//
//  Created by Mike Pitre on 10/20/15.
//  Copyright © 2015 Mike Pitre. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    enum Operation: String {
        case Divide = "/"
        case Multiply = "*"
        case Add = "+"
        case Subtract = "-"
        case Equals = "="
        case Empty = "Empty"
    }

    //Outlets
    @IBOutlet weak var outputLbl: UILabel!
    
    //variables
    var runningNumber = ""
    var leftValStr = ""
    var rightValStr = ""
    var currentOperation = Operation.Empty
    
    var btnSound: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let path = NSBundle.mainBundle().pathForResource("btn", ofType: "wav")
        let soundUrl = NSURL.fileURLWithPath(path!)
        
        do {
            try btnSound = AVAudioPlayer(contentsOfURL: soundUrl)
            btnSound.prepareToPlay()
        } catch let err as NSError {
            print(err.debugDescription)
        }
        
    }
    
    //Actions
    @IBAction func numberPressed(sender: AnyObject) {
        btnSound.play()
        runningNumber += "\(sender.tag)"
        outputLbl.text = runningNumber
    }
    
    @IBAction func onDividePressed(sender: AnyObject) {
    }
    
    @IBAction func onMultiplyPressed(sender: AnyObject) {
    }
    
    @IBAction func onSubtractPressed(sender: AnyObject) {
    }
    
    @IBAction func onAddPressed(sender: AnyObject) {
    }
    
    @IBAction func onEqualsPressed(sender: AnyObject) {
    }
    
    
    

}

