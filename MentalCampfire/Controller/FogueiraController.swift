//
//  FogueiraController.swift
//  MentalCampfire
//
//  Created by Patricia Sampaio on 03/05/20.
//  Copyright © 2020 Rodrigo Silva Ribeiro. All rights reserved.
//

import UIKit
import AVFoundation
class FogueiraController: UIViewController {
    
    var phraseDay = PhraseModel()
    var player = AVAudioPlayer()
    
    @IBOutlet weak var phraseLabel: UILabel!
    
   func SetupPlayer(nome:String, formato:String) -> AVAudioPlayer{
        let sound = Bundle.main.path(forResource: nome, ofType: formato)
        do {
            player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
            player.setVolume(0.1, fadeDuration: 180)
       } catch  {
            print(error)
           }
        return player
    }
    
    func MyAudio() -> AVAudioPlayer{
        return SetupPlayer(nome: "Fogueira", formato: "mp3")
    }
       
    override func viewDidLoad() {
         super.viewDidLoad()
         uptadeUI ()
         MyAudio().play()
     }
     
     @objc func uptadeUI (){
         phraseLabel.text = phraseDay.getPhrase()
     }
     
    override func viewDidDisappear(_ animated: Bool) {
        MyAudio().pause()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        MyAudio().play()
    }
}
