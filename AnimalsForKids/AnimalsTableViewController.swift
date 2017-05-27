//
//  AnimalsTableViewController.swift
//  AnimalsForKids
//
//  Created by Olga on 19.12.16.
//  Copyright © 2016 Eugeniy Timofeev. All rights reserved.
//

import UIKit

class AnimalsTableViewController: UITableViewController {

    @IBAction func soundModeSwitchChanged(_ sender: UISwitch) {
        if soundModeSwitch.isOn == true {
            ApplicationSettings.soundMode = true
        } else {
            ApplicationSettings.soundMode = false
        }
    }
    
    @IBOutlet weak var soundModeSwitch: UISwitch!
    
    @IBOutlet weak var pictureSwitcher: UISegmentedControl!
    
    @IBAction func pictureSwitcherChanged(_ sender: UISegmentedControl) {
        if pictureSwitcher.selectedSegmentIndex == 0 {
            // by timer
            // needs enable times setting and 
            ApplicationSettings.userTimerEnable = true
            ApplicationSettings.userTapEnable = false
            timerInterval.alpha = 1
            stepper.alpha = 1
            stepper.isEnabled = true
        } else {
            // by tap
            ApplicationSettings.userTimerEnable = false
            ApplicationSettings.userTapEnable = true
            timerInterval.alpha = 0.5
            stepper.alpha = 0.5
            stepper.isEnabled = false
        }
    }
    
    @IBAction func timerIntervalStepper(_ sender: UIStepper) {
        timerInterval.text = String(Int(sender.value))
        ApplicationSettings.timeInterval = sender.value
    }
    
    @IBOutlet weak var timerInterval: UITextField!
    
    
    @IBOutlet weak var stepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        stepper.value = ApplicationSettings.timeInterval
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let destonationvc = segue.destination
        if let setvc = destonationvc as? SetsTableViewController {
            if let identifier = segue.identifier {
                switch identifier {
                case "showPetsSetSeque": setvc.currentAnimalsArray = AnimalsSets.petsSet
                case "showWildAnimalsSetSeque": setvc.currentAnimalsArray = AnimalsSets.wildAnimalsSet
                case "showBirdsSetSeque": setvc.currentAnimalsArray = AnimalsSets.birdsSet
                case "showFishSetSeque": setvc.currentAnimalsArray = AnimalsSets.fishsSet
                case "showNatureSetSeque": setvc.currentAnimalsArray = AnimalsSets.natureSet
                case "showInsectSetSeque": setvc.currentAnimalsArray = AnimalsSets.insectSet
                case "showUserSetSeque": setvc.currentAnimalsArray = AnimalsSets.userSet
                default: break
                }
            }
            
        }
        
    }
    
}
