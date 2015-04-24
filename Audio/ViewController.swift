//
//  ViewController.swift
//  Audio
//
//  Created by Richard Tyran on 4/23/15.
//  Copyright (c) 2015 Richard Tyran. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player:AVAudioPlayer = AVAudioPlayer()
    
    @IBAction func play(sender: AnyObject) {
        
        var audioPath = NSBundle.mainBundle().pathForResource("beethoven-2-1-1-pfaul", ofType: "mp3")!
        
        var error : NSError? = nil
        
        player = AVAudioPlayer(contentsOfURL: NSURL(string: audioPath), error: &error)
        
        if error == nil {
            
            player.play()
            
        } else {
            
            println(error)
        }
        
    }
    
    @IBAction func pause(sender: AnyObject) {
        
        player.pause()
    }
    
    @IBAction func sliderChanged(sender: AnyObject) {
    
    // both player and slider defaults are between 0 and 1
        
    player.volume = sliderValue.value
    
    
    }
    
    @IBOutlet var sliderValue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

