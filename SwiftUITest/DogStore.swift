//
//  DogStore.swift
//  SwiftUITest
//
//  Created by jun on 2019/09/17.
//  Copyright © 2019 jun. All rights reserved.
//

import SwiftUI
import Combine

class DogStore: ObservableObject  {
   @Published var dogs: [Dog]

   init(dogs: [Dog] = []) {
      self.dogs = dogs
   }
}
