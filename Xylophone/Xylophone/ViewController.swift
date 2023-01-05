//
//  ViewController.swift
//  Xylophone
//
//  Created by Jay Ramirez on 05/01/2023.
//  Copyright © 2023 JayRamirezDev. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer?
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func keyPressed(_ sender: UIButton) {
        print("I got pressed: ", sender.tag)
        let sound = sender.currentTitle ?? "C"
        playSound(sound: sound)
        sender.alpha = 0.5
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1
        }
    }
    
    func playSound(sound: String) {
        guard let path = Bundle.main.path(forResource: sound, ofType:"wav") else {
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

