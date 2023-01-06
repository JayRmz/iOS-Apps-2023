//
//  ViewController.swift
//  EggTimer
//
//  Created by Jay Ramirez on 05/01/2023.
//  Copyright © 2023 Jay Ramirez Dev. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer?

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var pregressBar: UIProgressView!
    
//    let eggTimes = ["Soft": 5, "Medium": 7, "Hard": 12]
    let eggTimes = ["Soft": 300, "Medium": 420, "Hard": 720]
    
    var timer = Timer()
    
    var totalTime = 0
    var secondsPassed = 0
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        timer.invalidate()
        let hardness = sender.currentTitle!
        totalTime = eggTimes[hardness]!
        pregressBar.progress = 0
        secondsPassed = 0
        titleLabel.text = hardness
        
       timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        if secondsPassed < totalTime  {
            print("\(secondsPassed) seconds.")
            secondsPassed += 1
            pregressBar.progress = Float(secondsPassed ) / Float(totalTime)
            
        } else {
            timer.invalidate()
            titleLabel.text = "DONE!"
            playSound()
            
        }
        
    }
    
    func playSound() {
        guard let path = Bundle.main.path(forResource: "alarm_sound", ofType:"mp3") else {
            return }
        let url = URL(fileURLWithPath: path)
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
}
