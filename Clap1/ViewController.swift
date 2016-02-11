//
//  ViewController.swift
//  Clap1
//
//  Created by SEKINE YURI on 2016/02/12.
//  Copyright © 2016年 SEKINE YURI. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //再生する音源のURLを生成
        let soundFilePath = NSBundle.mainBundle().pathForResource("clap", ofType: "wav")!
        let fileURL = NSURL(fileURLWithPath: String(soundFilePath))
        
        //AVAudioPlayerのインスタンス化
        do {
            audioPlayer = try AVAudioPlayer(contentsOfURL: fileURL)
        } catch {
            print("音楽ファイルが読み込めませんでした")
        }
    }
    
    @IBAction func playButton() {
        audioPlayer.play()
    }
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

