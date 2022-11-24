//
//  Player.swift
//  shakeAndBangApp
//
//  Created by Ivan Nieto on 23/11/22.
//

import Foundation
import AVFoundation

class Player {
    private var audioPlayer = AVAudioPlayer()
    
    init() {
        loadAudio()
    }
    
    private func loadAudio() {
        guard let mp3URL = Bundle.main.url(forResource: "bang", withExtension: "mp3")
        else { return }
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: mp3URL)
        }
        catch {
            print("ocurrio un error")
        }
    }
    
    public func getAudioPlayer() -> AVAudioPlayer {
        return self.audioPlayer
    }
}
