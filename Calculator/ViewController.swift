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

    //Outlets
    @IBOutlet weak var outputLbl: UILabel!
    
    //btn pressed sound
    var btnSound: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //load path for audio file
        let path = NSBundle.mainBundle().pathForResource("btn", ofType: "wav")
        
        //pass path into sound url
        let soundUrl = NSURL.fileURLWithPath(path!)
        
        //try to load sound from url, if can't print error to console
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
    }
    


}

