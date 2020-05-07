//
//  SoundModelFog.swift
//  MentalCampfire
//
//  Created by Patricia Sampaio on 07/05/20.
//  Copyright © 2020 Rodrigo Silva Ribeiro. All rights reserved.
//

import Foundation
import AVFoundation

struct Sounds {

var player = AVAudioPlayer()
    
 mutating func SetupPlayer (nome:String, formato:String) -> AVAudioPlayer {
        let sound = Bundle.main.path(forResource: nome, ofType: formato)
        do {
            player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
            //player.setVolume(0.1, fadeDuration: 180)
            player.volume = UserDefaults.standard.float(forKey: "sliderVolume")
       } catch  {
            print(error)
           }
        return player
    }
    
mutating func MyAudio () -> AVAudioPlayer {
      return SetupPlayer (nome: "Fogueira", formato: "mp3")
    }
 
 mutating func checkAudio() -> Bool {
     if UserDefaults.standard.bool(forKey: "changeSound") == true {
         return true
     } else {
         return false
     }
 }
    
}
