//
//  SetTableViewCell.swift
//  AnimalsForKids
//
//  Created by Olga on 19.12.16.
//  Copyright © 2016 Eugeniy Timofeev. All rights reserved.
//

import UIKit

class SetTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageOfAnimal: UIImageView!
    
    var animalCell: String? {
        didSet {
            updateUI()
        }
    }
    private func updateUI() {
    nameLabel?.text = animalCell
    imageOfAnimal?.image = UIImage(named: animalCell! + ".jpg")
    }
}
