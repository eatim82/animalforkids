//
//  Animal.swift
//  AnimalsForKids
//
//  Created by Olga on 06.12.16.
//  Copyright © 2016 Eugeniy Timofeev. All rights reserved.
//

import Foundation

struct ApplicationSettings {

    static var timeInterval = 3.0
    static var soundMode = true
    static var userTimerEnable = true
    static var userTapEnable = false
    static var currentSet = AnimalsSets.petsSet
    
}

struct AnimalsSets {
    
    static let petsSet = ["dog" , "cat", "horse", "chicken"]
    static let wildAnimalsSet = ["tiger"]
    static let birdsSet = [String]()
    static let fishsSet = [String]()
    static let natureSet = [String]()
    static let insectSet = [String]()
    static var userSet = [String]()
    
}
class Animal {
}
