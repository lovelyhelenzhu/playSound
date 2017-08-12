//
//  ViewController.swift
//  Play Sound
//
//  Created by Helen Zhu on 2017/8/11.
//  Copyright © 2017年 Xiaoqin Zhu. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {

    var audioPlayer : AVAudioPlayer!
   
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        playSound(soundFileName : "喵", soundExtension: "m4a")
    }

    func playSound(soundFileName : String, soundExtension: String) {
        let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: soundExtension)
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        } catch {
            print(error)
        }
        audioPlayer.play()
    }
}

