//
//  AudioViewController.swift
//  MentalCampfire
//
//  Created by Rodrigo Silva Ribeiro on 06/05/20.
//  Copyright © 2020 Rodrigo Silva Ribeiro. All rights reserved.
//

import UIKit
import AVKit

class AudioViewController: UIViewController {
    
    @IBOutlet weak var songName: UILabel!
    @IBOutlet weak var imageAudio: UIImageView!
    @IBOutlet weak var playPauseButton: UIButton!
    @IBOutlet weak var currentTime: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var volumeSlider: UISlider!
    @IBOutlet weak var timeRemaining: UILabel!
    
    
    var player:AVAudioPlayer?
    var timer:Timer?
    var audio:Audio? = nil
    
    @IBAction func playPauseAction(_ sender: Any) {
        guard let player = player else { return }
        if player.isPlaying {
            player.pause()
            playPauseButton.setImage(UIImage(named: "play"), for: .normal)
        } else {
            player.play()
            playPauseButton.setImage(UIImage(named: "pause"), for: .normal)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "AudioPlayer"
        setupPlayer()
        imageAudio.image = UIImage(named: audio!.imageName)
        songName.text = audio!.name
    }
    
    func setupPlayer() {
        let sound = Bundle.main.path(forResource: "Invisible", ofType: "mp3")
        do {
            player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        } catch  {
            return
        }
    }
    
    
    @IBAction func scrubbing(_ sender: UISlider) {
        player?.currentTime = Float64(slider.value)
        player?.play()
    }
    
    
    @objc func updatePlayer() {
        guard let player = player else { return }
        slider.value = Float(player.currentTime)
        let remainingTimeInSeconds = player.duration - player.currentTime
        currentTime.text = getFormattedTime(timeInterval: player.currentTime)
        timeRemaining.text = "-" + getFormattedTime(timeInterval: remainingTimeInSeconds)
        if !player.isPlaying {
            playPauseButton.setImage(UIImage(named: "play"), for: .normal)
        } else {
            playPauseButton.setImage(UIImage(named: "pause"), for: .normal)
        }
    }
    
    func getFormattedTime(timeInterval: TimeInterval) -> String {
        let mins = timeInterval / 60
        let secs = timeInterval.truncatingRemainder(dividingBy: 60)
        let timeformatter = NumberFormatter()
        timeformatter.minimumIntegerDigits = 2
        timeformatter.minimumFractionDigits = 0
        timeformatter.roundingMode = .down
        guard let minsStr = timeformatter.string(from: NSNumber(value: mins)), let secsStr = timeformatter.string(from: NSNumber(value: secs)) else {
            return ""
        }
        return "\(minsStr):\(secsStr)"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        guard let player = player else { return }
        slider.value = 0.0
        slider.maximumValue = Float(player.duration)
        timer = Timer.scheduledTimer(timeInterval: 0.0001, target: self, selector: #selector(self.updatePlayer), userInfo: nil, repeats: true)
    }
    
    
    @IBAction func changeVolume(_ sender: Any) {
        player?.volume = volumeSlider.value
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        guard let playerForSwitch = player else { return }
        playerForSwitch.pause()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        guard let playerForSwitch = player else { return }
        playerForSwitch.play()
    }
    
}
