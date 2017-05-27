//
//  SwitchPictureSetsViewController.swift
//  AnimalsForKids
//
//  Created by Olga on 22.12.16.
//  Copyright © 2016 Eugeniy Timofeev. All rights reserved.
//

import UIKit

class SwitchPictureSetsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destonationvc = segue.destination
        if destonationvc is ViewAnimalViewController {
            if let identifier = segue.identifier {
                switch identifier {
                    
                case "pets": ApplicationSettings.currentSet = AnimalsSets.petsSet
                             ApplicationSettings.currentSetLabel = AnimalsSets.petsSetLabel
                case "wild": ApplicationSettings.currentSet = AnimalsSets.wildAnimalsSet
                             ApplicationSettings.currentSetLabel = AnimalsSets.wildAnimalsSetLabel
                case "bird": ApplicationSettings.currentSet = AnimalsSets.birdsSet
                             ApplicationSettings.currentSetLabel = AnimalsSets.birdsSetLabel
                case "insect": ApplicationSettings.currentSet = AnimalsSets.insectSet
                case "nature": ApplicationSettings.currentSet = AnimalsSets.natureSet
                case "user": ApplicationSettings.currentSet = AnimalsSets.userSet
                    
                default: break
                }
            }
        }
    }
    
}
