//
//  DogDetail.swift
//  SwiftUITest
//
//  Created by jun on 2019/09/17.
//  Copyright © 2019 jun. All rights reserved.
//

import SwiftUI

struct DogDetail: View {
   let dog: Dog
   
    var body: some View {
      Image(dog.imageName)
         .resizable()
         .aspectRatio(contentMode: .fit)
         .navigationBarTitle(Text(dog.name), displayMode: .inline)
      
    }
}

struct DogDetail_Previews: PreviewProvider {
    static var previews: some View {
      NavigationView { DogDetail(dog: testData[0]) }
    }
}
