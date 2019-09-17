//
//  Dogs.swift
//  SwiftUITest
//
//  Created by jun on 2019/09/17.
//  Copyright © 2019 jun. All rights reserved.
//

import SwiftUI

struct Dog: Identifiable {
   var id = UUID()
   var name: String
   var FamilyNum: Int
   var hasChild: Bool = false
   
   var imageName: String { return name}
   var thumbnailName: String { return name + "Thumb" }
}

#if DEBUG

let testData = [
   Dog(name: "Shiba", FamilyNum: 5, hasChild: false),
   Dog(name: "Chiwawa", FamilyNum: 2, hasChild: false),
   Dog(name: "Shiberian", FamilyNum: 1, hasChild: true),
   Dog(name: "Pochi", FamilyNum: 5, hasChild: true),
   Dog(name: "Pomeranian", FamilyNum: 4, hasChild: false),
   Dog(name: "Hasky", FamilyNum: 2, hasChild: true),
   Dog(name: "Doberuman", FamilyNum: 5, hasChild: false),
   Dog(name: "Doragon", FamilyNum: 6, hasChild: true),
   Dog(name: "Ricky", FamilyNum: 10, hasChild: false),
]
#endif
