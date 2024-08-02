//
//  AudioPlayer.swift
//  RestartSwiftUI
//
//  Created by Shiva Sai Netha Rudra on 8/31/22.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Can't play the audio")
        }
    }
}
