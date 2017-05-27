//
//  ViewAnimalViewController.swift
//  AnimalsForKids
//
//  Created by Olga on 06.12.16.
//  Copyright © 2016 Eugeniy Timofeev. All rights reserved.
//

import UIKit
import AVFoundation

class ViewAnimalViewController: UIViewController {
    
    @IBOutlet weak var viewAnimal: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBAction func TapAction(_ sender: UITapGestureRecognizer) {
        if sender.state == .ended {
            changeAnimal()
        }
    }
    
    var audioPlayer : AVAudioPlayer?
    var timer = Timer()
    var image : UIImage? = nil
    var audioPath : URL? = nil
    
    var animalsCounter : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeAnimal()
        timer = Timer.scheduledTimer(timeInterval: ApplicationSettings.timeInterval, target: self, selector: #selector(ViewAnimalViewController.changeAnimal), userInfo: nil, repeats: true)
    }
    
    func changeAnimal() {
        loadImage(animalID: animalsCounter)
        if ApplicationSettings.soundMode {
            playSound(animalID: animalsCounter) }
        nameLabel.text = ApplicationSettings.currentSetLabel[animalsCounter].uppercased()
        animalsCounter += 1
        if animalsCounter == ApplicationSettings.currentSet.count {
            animalsCounter = 0
        }
    }
    
    func loadImage(animalID: Int) {
        viewAnimal.image = UIImage(named: ApplicationSettings.currentSet[animalID] + ".jpg")
    }
    
    func playSound(animalID: Int) {
        audioPlayer = AVAudioPlayer()
        if let sound = Bundle.main.path(forResource: ApplicationSettings.currentSet[animalID], ofType: "mp3")
        {
            audioPath =  URL(fileURLWithPath: sound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: audioPath!)
                if (audioPlayer?.isPlaying)! {
                    audioPlayer?.stop()
                    audioPlayer?.currentTime = 0
                }
            }
            catch {}
            audioPlayer?.play()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        if ApplicationSettings.soundMode {
            if audioPlayer != nil {
            audioPlayer?.stop()
            audioPlayer?.currentTime = 0
            audioPlayer = nil
            } }
        timer.invalidate()
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
