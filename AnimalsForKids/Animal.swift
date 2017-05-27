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
    static var currentSetLabel = AnimalsSets.petsSetLabel
    
}

struct AnimalsSets {
    
    static let petsSet = ["dog" , "cat", "horse", "chicken", "parrot",
                          "Indyuk", "duck", "donkey", "cock", "chick",
                          "bull", "cow", "guinea_pig", "rabbit", "ram",
                          "pig", "sheep", "gans", "geiten", "goat"]
    
    static let petsSetLabel = ["собака", "кошка", "лошадь", "курица", "попугай",
                               "индюк", "утка", "осёл", "петух", "цыплёнок",
                               "бык", "корова", "морская свинка", "кролик", "козёл",
                               "свинья", "овца", "гусь", "коза", "баран"]
    
    static let wildAnimalsSet = ["bear" , "bison", "crocodile", "deer", "elk",
                                 "giraffe", "hare", "hedgehog", "hippopotamus", "hyena",
                                 "jaguar", "lion", "lynx", "monkey", "redfox",
                                 "rhinoceros", "tiger", "wolf", "zebra", "elephant"]
    
    static let wildAnimalsSetLabel = ["медведь", "бизон", "крокодил", "олень", "лось",
                               "жираф", "заяц", "ёж", "бегемот", "гиена",
                               "ягуар", "лев", "рысь", "обезьяна", "лиса",
                               "носорог", "тигр", "волк", "зебра", "слон"]
    
    static let birdsSet = ["crow" , "duck", "eagle", "falcon", "gull",
                                 "heron", "owl", "pelican", "penguin", "pigeon",
                                 "quail", "rook", "sparrow", "stork", "swallow",
                                 "thrush", "tit", "vulture", "wagtail", "woodpecker"]
    
    static let birdsSetLabel = ["ворона", "утка", "орёл", "ястреб", "чайка",
                                      "цапля", "сова", "пеликан", "пенгвин", "голубь",
                                      "перепел", "грач", "воробей", "аист", "ласточка",
                                      "дрозд", "синица", "стервятник", "трясогузка", "дятел"]
    
 //   static var birdsDictionary = ["crow":"ворона",]
    
    static let fishsSet = [String]()
    static let natureSet = [String]()
    static let insectSet = [String]()
    static var userSet = [String]()
    
}
class Animal {
}
