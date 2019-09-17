//
//  ContentView.swift
//  SwiftUITest
//
//  Created by jun on 2019/09/10.
//  Copyright © 2019 jun. All rights reserved.
//

import SwiftUI

struct ContentView : View {
   var dogs: [Dog] = []
   
   var body: some View {
      NavigationView {
         List(dogs) { dog in
            ExtractedView(dog: dog)
         }
      .navigationBarTitle(Text("Dogs"))
      }
   }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView(dogs: testData)
    }
}
#endif

struct ExtractedView: View {
   let dog: Dog
   
   var body: some View {
      NavigationLink(destination: DogDetail(dog: dog)) {
         
         Image(dog.thumbnailName).resizable()
            .frame(width: 50, height: 50, alignment: .leading)
            .cornerRadius(8)
            
      
         
         VStack(alignment: .leading) {
            Text(dog.name)
            Text("\(dog.FamilyNum) ひき")
               .font(.subheadline)
               .foregroundColor(.secondary)
         }
      }
   }
}
