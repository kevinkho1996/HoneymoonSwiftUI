//
//  PlaySound.swift
//  Honeymoon
//
//  Created by Kevin Kho on 11/07/20.
//  Copyright © 2020 Kevin Kho. All rights reserved.
//

import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Error: FIle not find")
        }
    }
}
